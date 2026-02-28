Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B7DA1E98E3
	for <ddprobe@lists.linux.dev>; Sat, 28 Feb 2026 13:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772286294; cv=none; b=o5rDHIy6tF1V0Lu04GIm4MBIwHUYa0BYQ5xKwhTILy7s/OUGajfUfHv7BpDx81+BJD2u+mee+gavsr+03t5ek6pybXDgZ80E29nTQV2AoHvzoNozz9LhLeuYSqysMQqqiFY717mDsXYX+t+lREtocTnO+UNf6DD9+U9NJw1j/rg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772286294; c=relaxed/simple;
	bh=CrjMzqZM153I3tI+9X4VaqB4r+TL1kR6+nw/x5BEz0c=;
	h=To:Subject:From:Message-Id:Date; b=VSwRpUjLS3+n4+ukdXbZ9TB42KW2l5/hivyByqbbmTVb6pEa4lzZCstnK8/1/v4BZVFb5cgwVBpdNo1sqJQ31V/DMb1G4T1s4Najo+kK/X86JBJNUjkyU1sEb5FKmRb9d80uU+MPFIRQ+HfRAUC97TNAnkxYv67o5pANQXyp6PE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gVImuQcq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gVImuQcq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3C63C116D0
	for <ddprobe@lists.linux.dev>; Sat, 28 Feb 2026 13:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772286293;
	bh=CrjMzqZM153I3tI+9X4VaqB4r+TL1kR6+nw/x5BEz0c=;
	h=To:Subject:From:Date:From;
	b=gVImuQcqw+Tw+e7DJ0FaElbCNMNsHZpa2+D4oYAiegSmXpLsGY70/zepTthfl8onl
	 xPBRn9Px+mw2BMFovvWg1Q8kc+z1GZChqfwFsZ+LniRvXiYWgeS9ZIQ1WOjM0vBkud
	 4ZZ1IKI8UpUZEqR0A4OjwtXwrip5DMw3oIB8QryatL3LqUevBByccxEFVW8WTnvsWl
	 2nr9HtLnaw7texGlDx8VIOvcxRFOwM9hq2+1+IN4JxWzdOpoJJPym5d2LYnk64i7zJ
	 dIE614uUfEA+ggqkiNdcnFHHslvxEJ8TWqo1WOPAVp65zG5FY5P3zfi/xAS462PWbV
	 EYEcwqLKRK/9w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FF36FEE4ED
	for <ddprobe@lists.linux.dev>; Sat, 28 Feb 2026 13:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177228629358.24589.15549204706443132484.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1a3733e9bf29be5021a8315569f8c42ccadae3f700f57e70fa610ac604accd81
Date: Sat, 28 Feb 2026 13:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772286293
