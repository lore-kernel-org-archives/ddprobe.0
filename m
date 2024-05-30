Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 621F3183994
	for <ddprobe@lists.linux.dev>; Thu, 30 May 2024 23:44:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717112663; cv=none; b=VXHYodmDFkAOg0KwsdQrL8Xet6ZXCpzaAKuYkzdml63hxC6KTv9tuNb3oc68lLvyT4LqJSRwYbTplaEEgg0Spm/GFzTOB4H1kcj4yvp/e6OS0mpOusZQtimC36kCVAoCoQcuD2A5gaxqjj2uG3BoEqyksw6NT7tyGsET7s/MHvM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717112663; c=relaxed/simple;
	bh=WVuiX2v+BaOSBQ23DCOFDoSLDBcgohP57drx/V625Bs=;
	h=To:Subject:From:Message-Id:Date; b=nVg5rFV0erE4vmtntVNMPtNQr83mACkF+3F/lzdzlcqo18Z92j72xYRbzm5bmm6uEDhVZ1uiJl7yWJxKAL0SK5sd9NYhpZnDI0s9k/VdtHmeO1vUaCTnHF/+kltNXjwPgrhXyZY/tGSFF6aIz1qEwtXqaEzleUC0pTgP5KjwKqw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FvKREyuO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FvKREyuO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EB1E7C2BBFC
	for <ddprobe@lists.linux.dev>; Thu, 30 May 2024 23:44:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717112663;
	bh=WVuiX2v+BaOSBQ23DCOFDoSLDBcgohP57drx/V625Bs=;
	h=To:Subject:From:Date:From;
	b=FvKREyuOzOpKPMVCY9KGkMdSEQl1CdoKx8vQFVqjRF7tYXLkOOkVeJBUD58jmDUgD
	 3CJm9BjEsWK25b04ad4k1FMxPBuCe4VGvR4MhUcSVEsHHgvdkeGWkEu5CrkBdc2qNK
	 ekRE68ND1hJjeg5YuY9ZW2mvm+ZwUgE5zoY9TlTEFhEV13F0ccBmEiPa/vayr873jR
	 ueueb3t5uVgDv9YxlJ5MWNMn7+EdsBVoD3n66Fn8GcoNzJE8tYFDWrPcCqAAuwbHoO
	 GlnbZVqwjP3p9kWWhtlt9Gzx2B4aXhBIy/ZcP3wJxVuEnQFhSY2eeWdG9Uph2ztz5r
	 b20C0K8ugx/SA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D5C84C25B76
	for <ddprobe@lists.linux.dev>; Thu, 30 May 2024 23:44:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171711266283.5249.17523759026274485587.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b871609224c236c9027f17e8d159faf76bf39c77f79a83e2c10b221adcde1af4
Date: Thu, 30 May 2024 23:44:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717112662
