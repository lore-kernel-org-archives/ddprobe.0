Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BCC42F22
	for <ddprobe@lists.linux.dev>; Tue, 27 Aug 2024 02:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724725554; cv=none; b=ajTOFAs9X+MRMKt9H1KEA3ykmnPboeIhFLP+iccppgUsr0eFHK5tHQLVE9LlEOjlL6vkDFjD0qKJdvtILwywhi3wFOKdT5krDMVl/Gl4XG74Algt2MYJ2C0AqH15/GJZfJeUNoOFK966xrtaVOAAlTEpDGbUm1jn4ABhJCB/G7M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724725554; c=relaxed/simple;
	bh=x8odFp5c+2W2O/pefHZmbpv5e7sqR/rYgkaZIigqF4I=;
	h=To:Subject:From:Message-Id:Date; b=UTVK4boAgFVfH3z1oyyAk4jTQjJ7m0NtycORpi2Vq/IU+yOAiIapbI0EUQVj7h9KrwCZNbrpptguK3ARJyG10gNudUsMCzTPymjK7DFmNbaMRouAc5nhVTe/MNCEPX/+RmB5cqwEIFXnUgqNgpF6CXsyzkEItzAKMXzOnVzRJEs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ibglLvTW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ibglLvTW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6C7AC4FF16
	for <ddprobe@lists.linux.dev>; Tue, 27 Aug 2024 02:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724725553;
	bh=x8odFp5c+2W2O/pefHZmbpv5e7sqR/rYgkaZIigqF4I=;
	h=To:Subject:From:Date:From;
	b=ibglLvTWzF8UDS1xe3FprOY+7pZtDUqy2hniiePczqS3Con5W6O2eKe8bLd0u2kzM
	 15Jz8b/sKOIYsPrZbr0jsl9eBJuCbiXnjJCTJ1zbqqBEfZ2jX7eZxCMiV/7QgkdQTR
	 i5FaJVIb+THS7fsmVB/YE6jN92ckM56bxPirsO4vGV9oMlU+3Z9ejEHJlFKOHGjjzO
	 BwMBD+pmbuMkHLvZy+yBG4LoL+Un1nVNyiqW7flD/HNnHLmvr6Gdq/vUo3roBOaD7Q
	 gEj2wy9mCVM5Q6CzK81EobY+R30OJZD3IS0rVhZMLWY4CKHX83ArmNa1HFTJg7Olx9
	 wQkrOLU5u8QVQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3C9BC5472D
	for <ddprobe@lists.linux.dev>; Tue, 27 Aug 2024 02:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172472555365.4438.14238306936562568289.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cb3f58ffdadf0ab65b0c2381a0cf14dfbb77557bcd816b1943badf183b65a08e
Date: Tue, 27 Aug 2024 02:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724725553
