Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E61A277029
	for <ddprobe@lists.linux.dev>; Tue, 11 Nov 2025 04:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762835994; cv=none; b=iyk5yayUPev2k8/ISDKT+YfnWIopdPMJH87KKUlKMhp0MONmBw9kagnX9bOvAOl/c9wiYzKHIouAd+jaWLNs6iMNs79teeqVISsELL84QFRKEWjHlFj/C0SuRl23Y5wczVmxIofAP5eLZWYHYgz/rWrCyp5kYJx3egPo6NuDFNw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762835994; c=relaxed/simple;
	bh=dxrKz7OLljT6UnJsv4MezXUCSZPzr68wqSIYbxUtj0A=;
	h=To:Subject:From:Message-Id:Date; b=hxL48DsGsSLZ9FegfUUgayQek7MYnfsx/AD0hEjJPGVfj+nHSq8GSxp03Kq8pwdxsOisNORx4q/Y1OKe42J+nkBr6oSKRlSOPkcgYfQdwSNFIArx/j41i3MXd/nd8s+B1SwYpr9iBJ/JeaiMvAr5ZUW4naPr2IdZjub2W90OOJc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A0GYFMFE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A0GYFMFE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEF11C4CEFB
	for <ddprobe@lists.linux.dev>; Tue, 11 Nov 2025 04:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762835993;
	bh=dxrKz7OLljT6UnJsv4MezXUCSZPzr68wqSIYbxUtj0A=;
	h=To:Subject:From:Date:From;
	b=A0GYFMFEqWGE2MIT18FUQuqWZM48aVc3GiBv0Fdo8MTqtKgH4z3MtGPqRYBBRjYDW
	 H4G8KiBuF9uE0cdyodDSlI88AzzufzlU8i26TG6ymn8danyVRkOCF72Uwkp43k83sK
	 pyzj8O4FsOyrsAJg114ptlJqp3FWpalTN4wup3TIkIfRfRo9HnrhBNTEYvujT84B2F
	 E2csbtuvQ7sn0kPnEXXeN88K3+Vb2cM3uWMOZuUilYk+1czcRkb799xEoF0U+8OzDu
	 TMp/Mmrw4s+YYJTdkyxPBA/a9N8ZwxfU3ejPecAtqrpvkdO37AxIYKhoGeXaTacaZl
	 eX69cpc69pofg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D765CCFA18
	for <ddprobe@lists.linux.dev>; Tue, 11 Nov 2025 04:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176283599363.11854.4286349116745834506.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ec929041806f9c32ecd22473b226c864268ca70c1ed3741ef5b71db594e6e076
Date: Tue, 11 Nov 2025 04:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762835993
