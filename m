Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 501F1EEC3
	for <ddprobe@lists.linux.dev>; Sat,  3 May 2025 03:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746243594; cv=none; b=ooRQgtZrbXwz4UWVV3dVtRs8WYgs+oIaMC47GoKEWGk+vL908B+3ff5ck5rlaOUVajGFgBIxoyBefe2tngDhl40mRbEvVmH1i0I/CYmEQbIvX7UjLNASpJKW5kQaBVHE3ryjAs/uA8WncsQ0/dkyDQ1wZtDn/mRTQZ4x3+WjTJI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746243594; c=relaxed/simple;
	bh=jYBXKzZYcwau03a4JsmS2Ndk+bu+P42hIK65kC2T7I8=;
	h=To:Subject:From:Message-Id:Date; b=Bd40MP30zryUrNQqJIU5JLw3v+30tjiB3QDtyXZc0Kppx/dqXBHslSp30AIiBZF/X/5wtwA7XBlOiQQ6TYTUGg4wXrbt1dATOPdi7vEcWPI1mmIspEnpxPpMOOfMwTWcOL4Tygxjw/j9tVX550vs22wPZerHZQ2Gv40AK0GMCXc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dnOf8cll; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dnOf8cll"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3069C4CEE3
	for <ddprobe@lists.linux.dev>; Sat,  3 May 2025 03:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746243593;
	bh=jYBXKzZYcwau03a4JsmS2Ndk+bu+P42hIK65kC2T7I8=;
	h=To:Subject:From:Date:From;
	b=dnOf8cllQsDvypL8OXYM/xjIOA7z1GVnc/VNi7Az97HKH5UOQxXGNU/f8i+b2SIVy
	 AiSVabgDbt+1xgoQzc1L8cEKxwAPngp/1PuX4MDsB6F8cR6PLDX31Kn6KYgFzlI+wN
	 7wr8d5gAVTgXNcCInYoTUOaHJfXrtcZWpTWw/r7fVcJomGwJhSayl+emQb+nyyq9uD
	 Ld0VFU7VQjx+HePEwUcK5/dLQ0v6tCt7DFmT8Pehjufm6qFMjmb4oPGM2T+mdbT303
	 1Leg7f0nuZIpk2KzkoXD1r8azTrNh/tSAlz7aI6YSLImWldd5nvWdPgkVwhaih15si
	 TUlENgb6n++fg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9324CC3ABAA
	for <ddprobe@lists.linux.dev>; Sat,  3 May 2025 03:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174624359357.18019.7305904283814888716.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: feae56c10b24afda375adfcec9335cebb4dbf3aaadf714d2b62f96184f48cef2
Date: Sat, 03 May 2025 03:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746243593
