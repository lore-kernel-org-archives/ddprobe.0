Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E0F213D47C6
	for <ddprobe@lists.linux.dev>; Fri, 20 Mar 2026 16:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774025694; cv=none; b=r5eLCeYePu8kYl0UPCB02Cfn5VtyoCT410VeEazEm0iAABpeYI9c9ocLh+MPBwlvxiCd6cS4FHxz/+9h0Vjftu0B6rHbZtA2P32D7tmss60RPKne1zlmg4F4mDdz1ZSX106Dksokar29mrocuiAkFkF96A9jr6F52YYhXx45T+0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774025694; c=relaxed/simple;
	bh=q1nwrBK0jCDVXjLmhClUs/j8H1WGZaYf5nKFph7iZhc=;
	h=To:Subject:From:Message-Id:Date; b=Vq+hBit3T3yIyffI7zytrVCsjRlv7rCXRQiiC6bxS6STzDhPGQiljdpQF/TxmMnzU3bshYQDddE7MgKMrwNgz91p0qD2qrZMMrjIiuA61ze3ygkBzYSIBB9LHiVSobvbxlhNxdFC7lv8EZ6ueoUBMSY3d59ClNbCtE0kMHFYbDs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jDX40wVH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jDX40wVH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A15BAC4CEF7
	for <ddprobe@lists.linux.dev>; Fri, 20 Mar 2026 16:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774025693;
	bh=q1nwrBK0jCDVXjLmhClUs/j8H1WGZaYf5nKFph7iZhc=;
	h=To:Subject:From:Date:From;
	b=jDX40wVHSBe9kv9CA6FK300uuUuvi+4hAuUFdQOL+3XYojSODhIS6SVApgpDqM4Rs
	 MGp6JsOKfuV0vQ1+jXPqYAm45iDenZFUF+TQw5TTeqfZoyZKbvoouAwkkvP5Dk/Jsy
	 4/JN0C+rczYjP8YvJrtCOjdsQcOqI27mMqZSZcl6iJO2yuuN/4kPbLDaUO6+YGcUDl
	 H9DCk4tBSUAH7rAUfIVSEnnb2v/0FfH90fzcqRS7ju/AjE8udSdeA/Ps/e1CT8NwZ/
	 cNndC38ds0cD8NxBnCaWeKeVYyjZVh07UYoazb+UBuolZIRskqms5x6009Q6FBQHLg
	 3HPACqJxWIxUw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9226010987B6
	for <ddprobe@lists.linux.dev>; Fri, 20 Mar 2026 16:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177402569357.23521.6980276312691733357.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fa336718d58f25c1d9ebf2d25eb07ba7b8efc73cb61407d0c47472ef14a54fee
Date: Fri, 20 Mar 2026 16:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774025693
