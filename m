Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58D713B71C9
	for <ddprobe@lists.linux.dev>; Fri,  5 Jun 2026 09:34:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780652074; cv=none; b=fXXpMfilozU7hYVbfnuiYMm/I8m0Xcwj6ercyZ0DI2h6gWptQCaLGFyEqkQaDLwjZv3ODnXhfQDfJPGEEidc0zI2rTnXnt2VfpxnSouzDsZI1K2ho9/NmQavn6fu36gSX+gL3ZfT9nKZXYfpEKg+QbhI2Khpb53c3ifdxkhwJcE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780652074; c=relaxed/simple;
	bh=8RCyyRZo8qkXZ8W681dceS0MRJvqdQnnu330q99Wj9k=;
	h=To:Subject:From:Message-Id:Date; b=elkx3yQHMWwUxCQjW0abaP1uFKFEy1XoF5xOlQAvEtmoA4oBi0Wa9PQOo4nKHEoiVMLi8dLmTgpgSaRp08sYUHebXG1gRoSon1nOl83ar+xNP2227eHCsYfRP+BWAgGWsjbco3RjxFnrit6anDjA/ZylAqF8DsalZlcl81v0K3I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ukyVFQE3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ukyVFQE3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DBC2AC2BCB4
	for <ddprobe@lists.linux.dev>; Fri,  5 Jun 2026 09:34:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780652073;
	bh=8RCyyRZo8qkXZ8W681dceS0MRJvqdQnnu330q99Wj9k=;
	h=To:Subject:From:Date:From;
	b=ukyVFQE32WEG933Jf7iAHjjv7NbiHqwHLsZpSRNKUdWy1FCUqAWGx6UzeTCQjw02A
	 QgUKD+ienEjhG8x3cjP+UnoMY1ekKRZVo3TCqprLIJKYRX6AOyL39xeQb1oGr1BseA
	 CpvjVskC2T6xQ8ie/BeUTUDMc56XgcW60JzMVm2iTYZ9iV0WZicVRpqoVqtIaLdMJW
	 c+TL1ynmgA/UErvAhnlYpKjyqVQlVVdBIdnsnAYiPw/8PDJNrey0sBqahjuaddA0b3
	 lOYCkYrWAiOzBUEwJc6kU4FLcOAQhGD8KIGfgdLVBf5Jbd9vgUOEfD5/T+ryWp2qoT
	 h7XeVuvggZpgw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB2B4CD6E5D
	for <ddprobe@lists.linux.dev>; Fri,  5 Jun 2026 09:34:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178065207369.26377.14190985727657821670.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c86909e9735a9e73a0ff78427bf15a685cbee587fcbf52e44572935a8aa4bd73
Date: Fri, 05 Jun 2026 09:34:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780652073
