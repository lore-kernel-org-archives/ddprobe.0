Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DC6E35F185
	for <ddprobe@lists.linux.dev>; Fri, 19 Jun 2026 08:36:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781858194; cv=none; b=LNKAntUKbAjLJfyODsBYf0N+6hu6oNjsYucBJPMXN+9pSbMKloMrIb9T8lGa+onP4S/iaBFCjQuwK4Ptr90Dd/1TN8qlCapJA//69/s8X5k/9nUBdIrXGnTe3U56pnBmThVt39qqP2VR33IMZHmi2YVRLzZy0hNiMgKLlgT6LVY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781858194; c=relaxed/simple;
	bh=74IYGh7CfI1PBFQuxzstwlvPIhjSHM0ZquD2xe3bx6E=;
	h=To:Subject:From:Message-Id:Date; b=kAsUxmaaN2IvnaBgb9+plH+/KvN1qJg8jrZ91E5IxNPe2fBkpsBiMBq5bxuk+UZpX1ak4OxMNglNRQDg9X8QpUnkkxJL1jAiU2bST6rVRaD/OdSBZljN498yycFsYscazJa+naJ0QJDzQ9FifdZep0emylNGupQ7Kd8e8sUrAvw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gHlEFLld; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gHlEFLld"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB455C2BCB4
	for <ddprobe@lists.linux.dev>; Fri, 19 Jun 2026 08:36:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781858193;
	bh=74IYGh7CfI1PBFQuxzstwlvPIhjSHM0ZquD2xe3bx6E=;
	h=To:Subject:From:Date:From;
	b=gHlEFLld4fZgor5N29Qtu/46ZGq6Zy7oPxfkiaoj8qhB3o5fzaeYC7hlWT8qpEMkc
	 r2EJ+6GeGpoOWWUKGi7m5WTmkmThV+wG8Nafym1KpwctVz3jgGk8QHx5GFoBI+Osr7
	 46pRRURLT/NqLc/NMyu3e39eXrXBMUASQbdXBjgb0/NO4BErPwo8Qw3ovg6GqbaWyp
	 pDd5qFmWerkdEZ5wy8krOLwbbaK2lPuvdCv8SilmOyT4wKx2/21oP904lE/A6BclI9
	 GGHmNyUvNNjXgo+sq8KCJPWC+6PNd8BhbrNtjg2bo/VNRD8IRy+PglMlF/DaRlew3F
	 +z57CPWmgaX/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE5DFCD4F26
	for <ddprobe@lists.linux.dev>; Fri, 19 Jun 2026 08:36:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178185819370.25872.17398498634547774018.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2c48380ebc6df61d7c998bafe3ee2103df87034a9a164c5c18c7a338da9a5af5
Date: Fri, 19 Jun 2026 08:36:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781858193
