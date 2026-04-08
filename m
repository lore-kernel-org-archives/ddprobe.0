Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CF1E331215
	for <ddprobe@lists.linux.dev>; Wed,  8 Apr 2026 21:35:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775684134; cv=none; b=pZpEyeweqSoexiGmGU3hq5SB8DkWBf2ba3es9fkWPidXIw0+VOZKdiDV0TjJxBEZlGprZCihJYloEHScEMsD6yt8BHJLiVvokI2eFRr+hmySnImZUK8EHbmnQL8loVWqf+5wgP0blco2bVJiPh7pLoW/HO3YSQk3UyRAxJCiIH0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775684134; c=relaxed/simple;
	bh=dwVWnDg/gbOjAdoBRKjW9M6n76KY+LI1VbZ9GZUh42Y=;
	h=To:Subject:From:Message-Id:Date; b=PhNjALrwjvYAK0yIEHEe+HzjtmXn3NKg7FTTcKVUX3wp7837vBlujW23AYrn2zwc7hSv2TPemGwOBRO1jyHtO0tSXaXJPiPpr8LorUUZQPfVUR9OxzW6pAKIu3xOLu9mkHzZWyw1sQFVngMcc83d4FCndU/V5AyEX/mu84Rhifw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ghJqRqXU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ghJqRqXU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BACC6C19421
	for <ddprobe@lists.linux.dev>; Wed,  8 Apr 2026 21:35:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775684133;
	bh=dwVWnDg/gbOjAdoBRKjW9M6n76KY+LI1VbZ9GZUh42Y=;
	h=To:Subject:From:Date:From;
	b=ghJqRqXUyje3DS/qV7C1tf4YMFjRX5PeNVZe1BleuSp/Yu9O1mtZtAMwXFey0S5/U
	 92II6JP9WuobrsScdedZQWXpA9BO/MOEXUKv2IE0BO5S6MmzBSc+hMApqIauLeV7Bo
	 sGW4Hndfq9dtQSMP1PR8EA6qblGPkuPNEEAkeWwokc+iE6UeQ4ZDu1iGMR2RB/LY4G
	 SQjLDMzaLtKwfES/b1zLGQy1y+QvqBPcIDPS2myukgEjGqYwP0HABS2xOFqpmNu1pW
	 cma38MtSWpho0BoAR5/NjgzeHmSgsiR9Xv8uFXdBlWJf3dj1XQOlu810xAsKG+52qo
	 Sjy8Undm7q2+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA9AD10FC447
	for <ddprobe@lists.linux.dev>; Wed,  8 Apr 2026 21:35:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177568413368.1791.4823982885749853454.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a48c83cb27f2682db435976415d0fd66de6ad4871b9d5e96fcccfdb80c1b604c
Date: Wed, 08 Apr 2026 21:35:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775684133
