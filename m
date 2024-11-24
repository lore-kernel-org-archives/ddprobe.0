Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18CA1126BFF
	for <ddprobe@lists.linux.dev>; Sun, 24 Nov 2024 17:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732470354; cv=none; b=Pg0331clF/oevjWs6TVbnK15y2xXdPxjw9atFWUO3yQVqcjdve8XTjnqYoVtfL6M/xfReL1TiW9wIiv0NgEiT6tm6BU7eLie4MH3p1LOe18hqU8teiDdDAunQR3gcjK1hK5iZFv64glcCDAUstWfseMYx06LBz5xSxmc/VHJXCY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732470354; c=relaxed/simple;
	bh=IrU5mMon+9238chLWBWTL4wRltGQw8vKozliIj6jSIc=;
	h=To:Subject:From:Message-Id:Date; b=DrkQhNTA8g6A22krszH3CKWhyhkfd907r0AMwOs+0QumgddpruXIyY6dhYTMnVsMT8+BNH+C90k9V3CY0xlQPORZZgMD9u0lBtgiHBNxmBoc9q4eTmGVYQiwMboauCsPfxBw6M9GrHZ6iEG11e6/qMcrP94rAOIrnwm8zafE+5o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s21kWBoQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s21kWBoQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3AABC4CED1
	for <ddprobe@lists.linux.dev>; Sun, 24 Nov 2024 17:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732470353;
	bh=IrU5mMon+9238chLWBWTL4wRltGQw8vKozliIj6jSIc=;
	h=To:Subject:From:Date:From;
	b=s21kWBoQcng0+jDxZSgu8l1IGLQnBjaCQAJmZn18Guy5JJFoGIljd81w795dUODjf
	 fKTYpnxq4xdMTfpa3D/O67tRfTBKPDDBezfnAT63X12D0XwQetgxz0orik+1/SN8HJ
	 85cWcRAkW9lzcSLyhszVBM5BQi6ZakvLnDNgyqcrRi/Wqx1DBoirw2krFSbrVBHvam
	 KpYwZQrmV+dtb6oaM63/m0r1EKR6sC3mJ2QtuRmTboU6xB1qsrgoyNtnj0FDEQxbNY
	 wa59EMEA4XE+5Y4oCuAlYeuOy17IT5G4dkamXOy/eFQpfhOFgF3Lr5Vb7UmM/PWGHE
	 VeHFPVlP6eQRg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A2C31D68BFD
	for <ddprobe@lists.linux.dev>; Sun, 24 Nov 2024 17:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173247035364.32197.821793677869380784.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 512aa93e9085649f02a694e8305017b297ed2f718ba3c2b94fe8befffb6837cf
Date: Sun, 24 Nov 2024 17:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732470353
