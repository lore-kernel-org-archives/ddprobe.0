Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 183D91DE8A4
	for <ddprobe@lists.linux.dev>; Fri,  8 Aug 2025 05:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754631594; cv=none; b=g44gS/VXuq0QfnxSTaW0NdEwrSINmz9BUovfr9qIRBCqYRAcYAFFJagDU21ylYjSEkeVnCS3R3eMOJX5rcJvDkqV9sDM+BoIc4yPLa/07/Elm4OvwYRZFO5Jd4obRF7EaPH71Mmj03M2TaGtGEjNbOFpkSCwTTgT0fvOA6aMjhM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754631594; c=relaxed/simple;
	bh=Up7+3n2nKIy7xxx6D5YO/pVQ4mIeAaAcFuFKajqhFm8=;
	h=To:Subject:From:Message-Id:Date; b=rvyr5xuqE89kSiPHgnZyAH0x6PLvRUFLG5C3k/+jK+L3NAJa4ZMYaEf6eKSCourei/TSrCyTdZfOE6EiyIsefkg1HL9aCHAObxIoBlI3cPdnjHsod7u/MnnyJZPRFYy5uD3BPdUvooxOd2xhORGSt1C4e6lgjP+RSKSSmBKxi3s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rokuHo5N; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rokuHo5N"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0204C4CEED
	for <ddprobe@lists.linux.dev>; Fri,  8 Aug 2025 05:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754631593;
	bh=Up7+3n2nKIy7xxx6D5YO/pVQ4mIeAaAcFuFKajqhFm8=;
	h=To:Subject:From:Date:From;
	b=rokuHo5Nx5kLaCKRlplJEkpahwehVbUpCgNTO1k/rOSbgLNgIKNVqGEWxlCTnHHPw
	 QOFtqr/zce23PICi+MV5GQOG8ju1Ml41X0uXHgqmcla//gwYuEzjKcvAD/Jc9yx/21
	 R/1MITrXsa0ikJQ8Wmu5vt6Xb3UaQpK5RbpKhFCWWpR66ruDTvd/NR5qhKZeFFp0BD
	 hqGmArDSr5HHMlTH0YwpPrx2SA6zxoDOStE6ex85SMGERAEOtV7G1rtySYEb1ajNyu
	 yVa+Fv4iX626eVnSecOKWIuWhU7XlFDw7cuTGaeA0A/qNQIPGSvSZi0d1PcazlR2aA
	 98/ewMYFjflFA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91661C87FCB
	for <ddprobe@lists.linux.dev>; Fri,  8 Aug 2025 05:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175463159357.22699.12300766357269886869.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 971809bda1842f0ca8a5300caebc606d981c01f9e62f6599785990d43d2a663f
Date: Fri, 08 Aug 2025 05:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754631593
