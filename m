Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 298FD15B0F7
	for <ddprobe@lists.linux.dev>; Wed, 30 Oct 2024 22:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730328354; cv=none; b=iuNsQo1VTnHsgDYukSSoJUcQCfMz5hsw9i8oqpCly3I5lh3F67mYXxl/0pDVQLPn3qfGKqErLPuPLVjduHEzZF8DGD/9NruYPzEVUcB5XlJs3M3ksqNS1niQFxHBgjWtIe7M1lpXhzP1vA3DzM11f/LTejbMuOt+gd4HAqRqjqQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730328354; c=relaxed/simple;
	bh=COttKO0KCLZhuylEuWHp0+Grg/iMJdOTm4EOKUbfrGg=;
	h=To:Subject:From:Message-Id:Date; b=FgDnqt1i587ykFKb9utqpBj31J2Vcgw7WXHKY8n5oRA88TATsjxG3IwcglkKoJvjzeqwwUFw2Twv7V5jLEqrSH1FmuRMfbSPUSy5JG9y2SNkvgbzPE5Jv2s104YXGllyywhubq1IQb6bY0gI8OFuowrfTtTEAqVvNW9ibjX1jio=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RKAA7/S0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RKAA7/S0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFD6BC4CECE
	for <ddprobe@lists.linux.dev>; Wed, 30 Oct 2024 22:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730328353;
	bh=COttKO0KCLZhuylEuWHp0+Grg/iMJdOTm4EOKUbfrGg=;
	h=To:Subject:From:Date:From;
	b=RKAA7/S0HjF3/PBfCfy8vsRnxjYfynZVEIJXjqvFk6dgZ6UAbqVNOJ4V1H3a28IK7
	 P63WBBVG1kNy6wy17J36JkkMAYvkZGyO9e5w0H1L6HR3e8TRCFkUoPiRcnF6jXwvrv
	 GPTGhbTApyTJugmmlBdTKxHH4vnnnZZPbIAvi5x1x1p8sgG3lnSkbH98JkI0ioLlDR
	 jY6sRKj/UVo8+4iH1CUbPn9ato0osMmiCsxi1ZmSk0mLuiJMu3rFsNF6gS2mEvTt37
	 jzUTyVTk8g68qewbngQbIL3eTUlUa6JnUo+74VGpG1dqFbrDgReWjawIb2pYtjuXi+
	 9QK0e0Mjtc8Sw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 980B1D6B6DD
	for <ddprobe@lists.linux.dev>; Wed, 30 Oct 2024 22:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173032835361.8308.8157163818542844646.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 840dd2b0743d1fb6f5b18d80b203c83233320718ebe30dc980d40fcda5bd8b64
Date: Wed, 30 Oct 2024 22:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730328353
