Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C070331200
	for <ddprobe@lists.linux.dev>; Fri,  2 Oct 2026 20:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790974234; cv=none; b=Ts8wsikM4Bmzw7a5d29fEDROsOCOFrm/I4eHxKZa3o9Wz+TfIyhGWvYY6uBkRjRO9wZcSVN+OBXxfj4mATt6em08CLA6rw6VLkBSIro82N8Fo+fOJRUe6tpBnctI3O260VQ5GtFMJeKH3nt528DjpXpYtcmxOQxyQszqaZK6TNE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790974234; c=relaxed/simple;
	bh=LMyMMFtfXZPckJzkWMem4+NiHK5du5rHiIf3Xb0Uwzs=;
	h=To:Subject:From:Message-Id:Date; b=T6U4LJ7S/fY0IiqNhcx+XMv/V8m1RnZgbetmR/Qo682zMb0s38a1BHyMAycib8FFcWI3iJXrXpiNwNoEOROwUJbalvKz2vsYdI1a22xcfSFv4EKhDywQsX4NoOkPkZic19ZZs7ywBPA276jw3UI964ffqYCNpbtCx9m+96QRJJs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PU1+q+wG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PU1+q+wG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE3B3C2BCF4
	for <ddprobe@lists.linux.dev>; Fri,  2 Oct 2026 20:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790974233;
	bh=LMyMMFtfXZPckJzkWMem4+NiHK5du5rHiIf3Xb0Uwzs=;
	h=To:Subject:From:Date:From;
	b=PU1+q+wGAh4Mf4VliQianLf1RErc+fdLrr52JfIHRqU3rfqhpjUSIew18PvC+c0+e
	 68FvWA3nwqnusSgc+0t7S02EG1joIEqoVVTHwV/XpxmsgCc5TCP6yiPALgAV3Bunfa
	 W1F7uHW9CZdYvvdskexVMs4atL1lYWhDz3sqWHtxtjdHQiqT8mG91YsdmOcFUs85oy
	 DXBEBoqt+SDvvyozfojbWOLtzlUuJuaZq7xNT25aiuPGECBhnmp0MITLtZ5kOnCOnF
	 mTOE4nBjwKmElW0N5PcyyrBSV+1QbTcqAcz6pNJK1qnFbNIGNGF319JB3SMtw/kRuu
	 mG6zzr8GqZDzA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAFF0CA5FE5
	for <ddprobe@lists.linux.dev>; Fri,  2 Oct 2026 20:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179097423369.13843.14758357171678283237.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bd460b3269cc7848cf54be1e542b564be647783fe98bfdc499d34ab37e59853f
Date: Fri, 02 Oct 2026 20:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790974233
