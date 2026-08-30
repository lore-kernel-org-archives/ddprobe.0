Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5213F2BB13
	for <ddprobe@lists.linux.dev>; Sun, 30 Aug 2026 18:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788114634; cv=none; b=uTepKWmGk8ka7rtL0enLDhL+2T4mXNjR5XEneSUqduP49pcpMIhWmoWiVst4y7j73htyfih+G+PNCxOpk9P1NskfsnMr2yUIJfz6g3bfEyRD9ZmWmPtpKXgWTHtacmJjvSu9ozLqQ5paMVKgo1SDQRkiTKBfm7q3SpCWuguIa5g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788114634; c=relaxed/simple;
	bh=4Q+X9XYEPgD8GTgSEWMU8pZ2fyddq9mNtKbwc0Tn5I0=;
	h=To:Subject:From:Message-Id:Date; b=o5R5DP6icv5r2m/dcdIEezUHEwVusz105kuB9zR/e5M0PbVUcNnn2R8TRtV3jRK5KHF331wi0MYtNpLKMSykfchWNPKjIjcyV60dWWMVcX/4zIlUjgq998djXOCgmb15T9NYU4FFHLLX1giSNJhp7ueJLfZQRkq5ZM9p5VMMA+c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mDfIjdSW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mDfIjdSW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFA37C2BCC7
	for <ddprobe@lists.linux.dev>; Sun, 30 Aug 2026 18:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788114633;
	bh=4Q+X9XYEPgD8GTgSEWMU8pZ2fyddq9mNtKbwc0Tn5I0=;
	h=To:Subject:From:Date:From;
	b=mDfIjdSWvAyscuo6tawaW8or3hlt2fMWnrVa56gimAM0qgLX8GjL3iAXj4tCzab0q
	 n37gNmHHv3ddcq2/u88M3UcoDg/i5bChIckkn5vL9qG38+w65Yu5k/kGFmkVZkAduI
	 bV00n1W/CeWIRh94inLO9dAfwV3dOAV1Ix4RJBO6lkVqmntSSEbe2IZXsI4RQek3UB
	 Wh52JkEPOSV10Zm6nsnIS2Z8wXslDqct0f+zUucJATvaDE2gcs96vYS1Pw7nqPjnEs
	 05grpKW/hbN8+9tcygoj7Bx4yFviJdKJxSX9ih2hSC6YDxr8pZCci1q0uL3CHA8Y8V
	 k4Em4+wuyI/ig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAF87C61DE1
	for <ddprobe@lists.linux.dev>; Sun, 30 Aug 2026 18:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178811463369.8744.6081584080066456006.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1be5abb81e68eaf8d8f6c6c34abea56c4e3d4628a502cdeef925523afd5914cf
Date: Sun, 30 Aug 2026 18:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788114633
