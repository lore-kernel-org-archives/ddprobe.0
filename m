Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D63B13CABD
	for <ddprobe@lists.linux.dev>; Tue, 28 May 2024 11:44:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716896663; cv=none; b=OiBZZHjygzuJoIPK7ko82rtzhrAMyb2U5ym/ZJWkJrhJIHQDpv0mEux/h4pdcARnkiAUxETaz4wi7oNl6tM8w6THRSZnG0Ggt8lF+ey5cK+xJOd6kPS5Hp7LPdBL+EVK2wmL5QA2KEXwvEAdKzsXqhDN7mh+SV7shbGw+bRVzKo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716896663; c=relaxed/simple;
	bh=QejXNaI7Asc4e5aj5JXn7sqI9OlLj4vo7tQj7q4kGjU=;
	h=To:Subject:From:Message-Id:Date; b=LtsLdIMlY2/UorGJJ6xnrMDE8V0EBQ+MvsfYaOcAIbrXka1bc8q4/4iT4gbbWB98PTKcrUZ6oNK1VYG5ii9l0GXjXZMxjaNS2dVQl1xLd2L71aa0FD0QdpOuDD6ucINBW2RDpAKnsLFrNUGT4+3WCRNlhQ0SymSk/fbsMHEAc7Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VR0teY+o; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VR0teY+o"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA35BC3277B
	for <ddprobe@lists.linux.dev>; Tue, 28 May 2024 11:44:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716896662;
	bh=QejXNaI7Asc4e5aj5JXn7sqI9OlLj4vo7tQj7q4kGjU=;
	h=To:Subject:From:Date:From;
	b=VR0teY+oioh8L6H8KPCMKILyFqQQ4R2KHHmPF5sKDU85vInmPZNTu1TIQOpennhx1
	 cWSkGPcrzsyOD0FRKoBy8cH+6zS7WPlzKs7nEptJHaCz04S6k42UEqRqnbQ0Vqk22r
	 5esdqWH36220v04PSXhILGGgiKNdA7r1o8WL6c2fE2u6kp2arvo4Wm6V0Lg1MM/VQ4
	 Sxh0EaPvcnAZQMfCjwdxO9AuVQfsUBbJbXSQTHBI2BrVHn+gJyHxKJIV4w57ekwPHG
	 yDDXwdH4egcmAZZWW2OokJOtWEPbVaFcy9PylXPmIM914gdNrKT1NOC0pMOABgUbMu
	 sVVUC6kl7CVDg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C7EA4C25B78
	for <ddprobe@lists.linux.dev>; Tue, 28 May 2024 11:44:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171689666280.22342.15301165931147327002.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6b0f04a9c0de54c42d5dc547bd70115490fcfe2b3d32f6c75c467a46b7c6b59c
Date: Tue, 28 May 2024 11:44:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716896662
