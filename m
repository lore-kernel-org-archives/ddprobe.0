Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 212BF26560B
	for <ddprobe@lists.linux.dev>; Mon, 21 Apr 2025 13:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745243994; cv=none; b=co4zIibdxkg+GCeJ8w5vbugig272PI4MxjHXhKFb/H/oq+zb2tDnXns9JRosuvDUIC/2vb+frQgDDjT1K8pHYceg8+xuNnBi6zcDDypLzRbjupfUGJLOYh534JUqoLf98s/em/gSfbVFDXh0z84NWkeRKvPAByVWhEejmCPZLQA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745243994; c=relaxed/simple;
	bh=w7VroIQqynMafyyBzFCv/t4QUSDEbGDpvPn+/PamPiY=;
	h=To:Subject:From:Message-Id:Date; b=hbRfCpWmTupBafXw1fCnOFbUjMqJywN6D1HbKpNkoTeCZXoV4gwswP4whQyjpBUoKUwa30DyZFVcVAeR8ClCocuZQeXuhfP58TZ9KjddzGsQj8Gq5gUaCXbxEPXtKJm8d5dLWq5Mi/+tpOpXl/++Zdy/8O+sNslKRasw3ZQVmjE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bV4/0p33; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bV4/0p33"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F5C2C4CEE4
	for <ddprobe@lists.linux.dev>; Mon, 21 Apr 2025 13:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745243993;
	bh=w7VroIQqynMafyyBzFCv/t4QUSDEbGDpvPn+/PamPiY=;
	h=To:Subject:From:Date:From;
	b=bV4/0p33H7d8waz6bWLA908iKQ7QRtguaXF5LVNAE/0hxIxrtv+4MM/L3Sts8Ft0E
	 V8uf+zNtU21JU4L3+1LfZCmvdAURZK274fZrwqoNx6KNxUUoyqZLl8Dmqf1GWQaH9W
	 GZWF+hp2uuTsy2AYI1vdCvwKH/F/C8QR5LVZjblEIJaTJg0dIWi1H/upSh84Z8A7Ni
	 0gLCuheaCla8hY2a+quj2CzEbKN8as8E7I4ipJ60TVku7r6IoKydV5766mAAMILr6e
	 xCyFcJboHWLi9DEiHicba4+kb9S21ArJDyHlLQWQhM299mITXVCnarDFHJSGh8Nf6c
	 Yy1R4x2k8WclQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90B9AC369AB
	for <ddprobe@lists.linux.dev>; Mon, 21 Apr 2025 13:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174524399358.29165.5587832205501453620.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 467845850165ccfbcfb7402c0aa0d1ffc9d03c6eed30f8d8cc477de7c9153336
Date: Mon, 21 Apr 2025 13:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745243993
