Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40D0A8F77
	for <ddprobe@lists.linux.dev>; Fri, 18 Apr 2025 17:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744997394; cv=none; b=hrys0uhEUezfQpt/PwmycxjKHcmF1POY1ubCGMue0YWQEdj+wiY37cJj6VmkYXpOdUF92FjRrLiUJZJ6j4ppHvffRikljNqVwppyZ7Po2H9Il34AL4CNo3PeokJqljK75Vu+aFX6/q+NOcUeQ520qxAJPb9sx6JnPykwdwOnVbU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744997394; c=relaxed/simple;
	bh=wJgAK/RGKnhCYMDgdISMce/+p5OYoxFyvoeYMl9Lpb0=;
	h=To:Subject:From:Message-Id:Date; b=JyYawnrXsSA51VkMjCyOlC+gh6s/XQmIWukZgqtlPuG3ZpMLBpSAbQHCkiab27QUT7lBX0y79VuzZTbnAaBgQD/jpI50J4FXMeQiB+C49P6smfZVWDayPRvpOd/kg38X+82t52/FopfwyhPyEaghpP3PEasj5/WAJH3j5dHb8vE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NlvFoTWa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NlvFoTWa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF6F7C4CEEC
	for <ddprobe@lists.linux.dev>; Fri, 18 Apr 2025 17:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744997393;
	bh=wJgAK/RGKnhCYMDgdISMce/+p5OYoxFyvoeYMl9Lpb0=;
	h=To:Subject:From:Date:From;
	b=NlvFoTWaHLhx/R4dG1Fu2ukOzKW9p9v1OYptynYREFRXe5ZzMOTEQD+ZUV5VQ1eQV
	 E22kmQ134KXGkBPg5e8wzALDXg4WiHg+QVhYX81irMyQxQ9mFufyLnNT9IOZP+XpUt
	 59sMEW2LzOnhxJ4mFen62gzFtnjRcbFjn+WaO2ZY5DOCtG3L5lOLaqhV1NQabBL3z6
	 VqL6UxrWBJnP1aIXAm9YOIlN+gsUea6xpRjbVak+Msof3UpbIjRojy/Af6Xg2iUU7F
	 Xh//Bu+SlC70u+l47/59ZZKLRm8fY4Gdn0NDfmDtA6YpanLQtG1BEv6Cg1SW5mIkvd
	 QA6LBc7EU1jzA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96748C369AB
	for <ddprobe@lists.linux.dev>; Fri, 18 Apr 2025 17:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174499739360.27621.14715666059659436066.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9230de9c00a43ae3eb9c3de4d32c7df92f6c4d089154ee4c5038336b462b142c
Date: Fri, 18 Apr 2025 17:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744997393
