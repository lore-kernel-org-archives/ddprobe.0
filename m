Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 562E4190492
	for <ddprobe@lists.linux.dev>; Wed,  5 Jun 2024 10:26:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717583183; cv=none; b=c+AyfAjHO4MFSts9GPlN2IKOUDhT0XG7FrrVt5jgiLyeO+vLdcVcempiwtYEDUallaVJRN1oAAYjWLrpCjEFC1J4kDPm2/MAkajLvi4bl6DxzNK05YA4fzXcxGU+S28zfTey17P3JdtKW1Q3hN+2svvo6t+fSKZRpefYe9u73kI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717583183; c=relaxed/simple;
	bh=2jO8CGUJJ/9uXkaPO0mAv61PiZfe172LidJMDqerTio=;
	h=To:Subject:From:Message-Id:Date; b=V0tQCFMfqMs9z7ASVY+GDXBZYCAFAYXyLBQ3ejYn0vSXdME+q5J9Gzrn5bc1wQ+44T5JCaEazv/DZ/J0ROoPD7NSpJgkkDT6/kKVzPFcmJHOHeT1Nocmspsdfw+INAaW2CK7xBGhhVhFKjt9huS06yQ31R1bb4EvICHAM4BE85g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EFvGaaJ3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EFvGaaJ3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DEB92C3277B
	for <ddprobe@lists.linux.dev>; Wed,  5 Jun 2024 10:26:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717583182;
	bh=2jO8CGUJJ/9uXkaPO0mAv61PiZfe172LidJMDqerTio=;
	h=To:Subject:From:Date:From;
	b=EFvGaaJ3wzVDvkanYbt96MTMSorb0CJ5Q4UuJXxatINjNeim7PY50HquG0zKRWtqP
	 Dd2N3Mjhy1en1kqoZ3PVuhKwlnk3/znH14HuedrVbbU9A1wYHZ+NGwOu1KKJXM2EFU
	 sEi/j7ejlElL/ORwAUl/I15pxQMR4tVAIvweXU1s8LJejN6iLj08NmRoYqjya8uLvf
	 JddHRNDezBTX2RuMKLcEy+Lu9gPuHh3dtehhb9DIJ3Sv4DEzSpsx0c7u44Gvp04SsB
	 82pSGxiXsRJ/+pfIeiN7FHe95x8l9Bk9FxeOZqI80UvBF5yr7x0Wo7JWXSSrq7ExUy
	 hDpx/oCfyazLA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C8187C25B76
	for <ddprobe@lists.linux.dev>; Wed,  5 Jun 2024 10:26:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171758318280.23736.4728718270017593861.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7826f9239ec6a2f1353976fbf803e30d21c6529da2b2732d281da6fe86fa95ae
Date: Wed, 05 Jun 2024 10:26:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717583182
