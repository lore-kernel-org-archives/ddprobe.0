Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EDBE205502
	for <ddprobe@lists.linux.dev>; Tue,  4 Feb 2025 23:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738712154; cv=none; b=s0dZuGDQTiQAuCPbk3t2xZI/LcLTN/wtyyCwd6Iok+TFzfZVNu+pKQR6reK1peo4LDElEldgMJJQh8ES/WxD7NJG7zZ9iJdKxwxijRqFoGVXT6zcl0Tz0OhdYgjjbE4sApDG3acfzxXUnyIr198ybNJzroWC/i5e+M2pQs48wFs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738712154; c=relaxed/simple;
	bh=9Bx10Oid4mpH1olhSfaysFN0X20QwR1BkMMf4/oln1I=;
	h=To:Subject:From:Message-Id:Date; b=NzHSa7TENE51nG6T0hx0233c9gtvLckl51tniMWzvoXJOHEmm66Js5PbivLxhZSQ5P79mA+WVp2OZNwxSCSYjVHa50CyadJtmcmxiVy3Vhjlrz8ezoM/W3f4k87bL7Odi96HrmI7aCPC5x0lx0ncXZoCpiodVJOzeLDw6eOydjg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r4e+b5Lx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r4e+b5Lx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A82EEC4CEDF
	for <ddprobe@lists.linux.dev>; Tue,  4 Feb 2025 23:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738712153;
	bh=9Bx10Oid4mpH1olhSfaysFN0X20QwR1BkMMf4/oln1I=;
	h=To:Subject:From:Date:From;
	b=r4e+b5LxxuZ5WlXCmliot6YAoZX5nip6R3qfRkNZfIR41fH9hst34rq1i+rzvQMun
	 m1QEISSxhLVSbge1Wrjk5f+yvd+PFcGDfDmrE1trNlBDtRBzVQWLV6Lh3ykUa83V/2
	 RCkg4uaQ4qY3h8AMvechmmbtO3rluvfbERcrh1PKpiXFYF0VJZE2bjItOcnfm+oEqM
	 aPq9Ty/+4BbkFPROYlVUBH3zq4fooK7xNUklOvXxrSV73Byrkw3zYqKrL8iXRPbQWT
	 1w1dWsfjxjpkGm+MMohtEn/JAYhH12GKjxDYTRTwP9O5hxG2pl4KP/2qZI5bfq7kgq
	 /uwjNNcTpKDWA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 926BDC02194
	for <ddprobe@lists.linux.dev>; Tue,  4 Feb 2025 23:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173871215359.2162.14520286458130072420.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 088460d6f8a9f374b6b8554e2981c65ec54e4dc7771d84001c38013ae1939c3e
Date: Tue, 04 Feb 2025 23:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738712153
