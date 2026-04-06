Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B76F221F1F
	for <ddprobe@lists.linux.dev>; Mon,  6 Apr 2026 11:55:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775476534; cv=none; b=Fgff5rZCu2s2xXe4ACbBKORt/sAvvGSBHwhosMFcl2EPKpl/ObknxGlQFGgJ0YLvkLFxZi3uwBFFzStozv6Heylzi4dbDkLoVHMvc/ZmUB5ATJDaV/yRgrNdMbPLjUV7dUsfVPi96GOeYpAQxwZ6ijshoiv7ndVnTMPN0jBeZkQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775476534; c=relaxed/simple;
	bh=YADNLeVRrrjEnGu/fmvjS8F4c7eWgbriV5TIMQD2HiE=;
	h=To:Subject:From:Message-Id:Date; b=bGl6uya78YMW1K7u6F2pIcK7mU9UtZHRGl01S3lFXV7e0pFFQRlg9+aDwRWpogddUYgfQagcos1md1XJxev3nj3Kgv2nq/Y+B5muUDQWYsVDQ66EQ8EuJ4AwVrtm5ejPpWEKR5BXOKihTaMd3GTr8Ulv8kRof1L8KaQ0aKjPdSM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ko6Wuydq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ko6Wuydq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC274C2BC9E
	for <ddprobe@lists.linux.dev>; Mon,  6 Apr 2026 11:55:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775476533;
	bh=YADNLeVRrrjEnGu/fmvjS8F4c7eWgbriV5TIMQD2HiE=;
	h=To:Subject:From:Date:From;
	b=Ko6WuydqR6yhX83v4qok0h6HiH6PJZmJQ62O3l/Q3l2AJuEqS3p4cj4uXb8ImvZDi
	 AToTehqxECi1w6ECngy8bYFxwGxG5/HfcXuHRYXB4or4gfomrRmDO8o623Yu19yarP
	 zSjvdI5F04QHETldzm2ZTs8gwO/AN63BcOocyopAkd4rNy4sA0pZz2uw6OBmOzsxWF
	 pqFNPXTC2lKNdUJRs4lY377QChztI6KEPa9HtdyV70jwTchf2ivUNSTDiDjQjzL+Zz
	 jYEQrHLeffYVDSJNA2j+rRfHOqv4haYN5iFQVAcyfuKqCVnfCBJUpM6tiBNaMU0Asa
	 2jJh6G4SP1qNQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABB32EF4ED0
	for <ddprobe@lists.linux.dev>; Mon,  6 Apr 2026 11:55:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177547653369.9952.3288779967014303021.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 60594e471975e619f0317ccea3879c1aece501aaf752e0eb0c1c36a66d551733
Date: Mon, 06 Apr 2026 11:55:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775476533
