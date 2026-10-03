Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4EED41CAA6D
	for <ddprobe@lists.linux.dev>; Sat,  3 Oct 2026 07:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791012634; cv=none; b=ZCEVPE760VPSzRbdgIWdWfmfTPHhltUgbdVV1t9tg35d/SGK1HTP/rWAwsTBwxPSG/kNgn1fn7iJrDPkRVnvhHA3IdpcXf7hg8bL2NZj5TYobXASMLMw9VrayaybrXeSwibZE9NwTdfnteoI2HJJNIiv8A8zH/jWtFRly6HgTmE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791012634; c=relaxed/simple;
	bh=xgVoVFHrQ+kDV2D/ZtBgTCOcalVafR6Pg+58q/sa/3s=;
	h=To:Subject:From:Message-Id:Date; b=M80nYfXsSo9HQe6H1eLev2e2cOZbwjOMt6N3CxJ5/iG0vUxDuLOxKjK8GPxKYdrNNdR7GBPy8C9C1fIr92orkrobulrWQ+kHf6N6DdRMT+IFci4Tdl8ErfcRlGCeRVIJUfqqsEDzLaTBEy8liTJGsC+rLB+FoNyjYcdXF2T9e8c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HPj92HMy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HPj92HMy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD170C2BCB9
	for <ddprobe@lists.linux.dev>; Sat,  3 Oct 2026 07:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791012633;
	bh=xgVoVFHrQ+kDV2D/ZtBgTCOcalVafR6Pg+58q/sa/3s=;
	h=To:Subject:From:Date:From;
	b=HPj92HMy3i0XgSIjl0SRDU767yu0DW/Q65IBCOTWGoHeOeXYFi/Ta8YbTZAjnwgPS
	 8R0x23oDTq3yH37OX8GJqcQA1YDetb6XVjIOC54wLYJRJuPXT8d3Hk7rC2gJXVdjQl
	 rOiSLN/CIXfRZl606/+RGN+38pN15/fCfc5Vya9CfbQoNb9GHjgAJAufaIUA3v/85B
	 xkH7OlTowHHMZH5IkrJqQOLeHq90A5/BRSzb3xX+ovz4xc042nRyOSdqUG/frQ37+V
	 2HZGeaSksjGjrhKvLkeHwd2wlYUSfdSNqM4NwifulFAYzLpnaYxBBAMw+vIl7RZrqs
	 JzJXLM8eg6emQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA3B0CA5FE3
	for <ddprobe@lists.linux.dev>; Sat,  3 Oct 2026 07:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179101263368.26444.1644700305817675181.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: befa65c0d3dba22d6e42f013199c1e0a9d6219b8928ccdf5e96f537b029c56f6
Date: Sat, 03 Oct 2026 07:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791012633
