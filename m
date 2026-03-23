Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A42A38656C
	for <ddprobe@lists.linux.dev>; Mon, 23 Mar 2026 09:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774259694; cv=none; b=ttqleb7pzJK4KZmKFCa6D+o2PhTWAnOwOseHjgiuYcntPg9wmYk2jI+H3627ZFwUWt+1CWiS4+n8ECxyS/GaCtL9T5cOtSgKrndDM+/MnC4rDouUJNp2GatwYY6e7gb/f1ypFbYKN8n0Kf+V3tjFdHvdqC62B6P3U29Qn2geU2s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774259694; c=relaxed/simple;
	bh=tel6vRQ4ObwyQxRRtjsP16DZzbrGtECPV6h8qn6ObrA=;
	h=To:Subject:From:Message-Id:Date; b=ifiwxmP+xXfFWQt2A/IRpaKNbafJa7waC+Ytn0AK4GcY+BzEU2pNTWiQJSuCwLGsViwWyx4x8PfuqYL2whY5/H56I4/PgxWbsowJ5mOKjtkvziUjbWEbbAAOhObbk8fft6/JitReLk5/80MLwlW9SjHTLzJH9wJhOj6K927aIgM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gp6Hats/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gp6Hats/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4CE3C2BC9E
	for <ddprobe@lists.linux.dev>; Mon, 23 Mar 2026 09:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774259693;
	bh=tel6vRQ4ObwyQxRRtjsP16DZzbrGtECPV6h8qn6ObrA=;
	h=To:Subject:From:Date:From;
	b=gp6Hats/CiJ9uNnSYPriKOKigOsEgyix1jcJnKjTWuwpydRWgu9nPQxlsxOehLO86
	 +LGO1ri5QeQ1V5LI2AyTUH7YYYixn27w5vkDD/6CjJ3ZeJ55Lw/kYOkC0pyiY9muLY
	 JI+tLRpS+UHF34d3V1pROtbdMMXbzi8+SO1lGvJJscJwP90G4sXOqYypFq8TFXingu
	 2Tkqprkxc16bbdD5exT0DeO7cfHhxgm+ZtZ4+bjkQNfcm9JzhyEf2O5fun7ZU+wGYf
	 wBpqwXuEBdTkmMctg4E5SPvKgL3/+L0whwY7PTQBDyy7kf4aw6zjmZ3kw8H0uRcEdh
	 PMpKWGtAIb+3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92432EC01B6
	for <ddprobe@lists.linux.dev>; Mon, 23 Mar 2026 09:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177425969358.796.2887588694092007020.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 75084d5f7246337bab8ea562df867f69995ef1513557bce39c9b7aa433b09e53
Date: Mon, 23 Mar 2026 09:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774259693
