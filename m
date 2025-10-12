Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3340517D2
	for <ddprobe@lists.linux.dev>; Sun, 12 Oct 2025 07:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760255394; cv=none; b=d9XOcyrlCmHTKgliH0RteqWdVFYqaXRzB1pROPdeL/BDjGe4LZx3DOBzWZfvMw91htLlUz8ub++YsCHugYmLb31x65ACkGIE0qUIunlFamQrfz0glvzq5qI2mlLt4XBZuE5BJbYu6CXhJ1p7Ph4ZVSMhKIpgRFz2WzobmeUu3iM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760255394; c=relaxed/simple;
	bh=PTt1OBY/iQq29xp6PAIKQXd7xY2AlQqss4fAL1K023c=;
	h=To:Subject:From:Message-Id:Date; b=VF+vlC4AMzgc9Mr8X9DJshEHeHaadEY+uz0UWLtmmRbUs5OhTciQUfZb+eOcfK/kHDS/2y1TERhdLwRTA8jgyr2OerdVY08rmBdMd8V1mJUQ2LO81XlGH5DjFVMKqfXMuCqFkojfBXNU0c27PHr0ELfrUPOIRS9Q7iCksD5JhTM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cakyiSJ4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cakyiSJ4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF2FAC4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 12 Oct 2025 07:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760255393;
	bh=PTt1OBY/iQq29xp6PAIKQXd7xY2AlQqss4fAL1K023c=;
	h=To:Subject:From:Date:From;
	b=cakyiSJ4SlTTeSt11QAcvLpKAsxw1KkLtY6aQOfTCxjOjSI8m5alwSdzgikWaMKhD
	 D2bYJz86a69ukYINx1Tzf4/NTZ7UkLI4Ft/mGL6OpVUnQq9lMt24WD+7Z4zqDyK1eD
	 5HJt7LiKCs3bU3Bw4cyMiFf1LimzVPwalbGQJp3lVhQcsHhZfQatGb3EqnKVg+irlE
	 2CktpH5JwiwsqM5v7llCzm5XFv7BWgVVtBkkhTrSoQLeEiQ8oafHqtjnzCc82P34wk
	 Jj8whxtkFgx2kJovCeH6LshYciY5ke5C37VSIorVCpZFC7dNWRrjTiHB3zngkyyiU1
	 CfzOFzny9d6uw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C346CCD187
	for <ddprobe@lists.linux.dev>; Sun, 12 Oct 2025 07:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176025539361.19051.6086251472756076394.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 24b965ae30e37a3eceb2b09eacc67578644a4ab8d843dd0f4f9b33afa90aa713
Date: Sun, 12 Oct 2025 07:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760255393
