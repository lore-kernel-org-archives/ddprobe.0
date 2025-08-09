Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B36E26AC3
	for <ddprobe@lists.linux.dev>; Sat,  9 Aug 2025 15:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754753994; cv=none; b=KYyQ1uHOrYcbyx+N6JiXMka1bNRjweJA/9W/rBsuC9+SB6zcwkC+aaQfW8+41mv044J/nSdRVtqW58DL0WC2470+iqZzDFiA4uga0pZuCLX+AsFe+2CVZ7rMh7KQQdpM0JZZzhcIkXW+HceD1kCSOulLDEYs25kMKtFGNfZT8LI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754753994; c=relaxed/simple;
	bh=/Inc+yxgGehU0LHaqrhldZO3hPwbqGIhxPN0/xH3Fbs=;
	h=To:Subject:From:Message-Id:Date; b=mtlmgU6O9vjaKGW73XA3CBD+eBzhpiMnRIe++7JcwJHFtSreTFdszw6vNHcBp/QcObroW/Pg+6CyXt2WnnCny54ea1rQBn3V6H3lR+7AaZpjQVqhQGa1rXqVvdehwf7MYBJgizzQiAmRmaBW8zehLqi5EbEdh4LLEkcmPqXMuAg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vEilismr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vEilismr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A15BCC4CEE7
	for <ddprobe@lists.linux.dev>; Sat,  9 Aug 2025 15:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754753993;
	bh=/Inc+yxgGehU0LHaqrhldZO3hPwbqGIhxPN0/xH3Fbs=;
	h=To:Subject:From:Date:From;
	b=vEilismrj3mc0eNR+gsJlDvZDy7EQZ5Ba3Wzrcpl2EUbPwnnmjOeHTZDyoE7G7TEd
	 YQhd4osOcF5tgbumD1mfAwBdmfmBClEqFmv9stn0P6lFJ7Qc7Q6KHoEpI8RJ0S7IqO
	 21F6psdhf3LYJP0BaOakw7S0B09gT92nSIT4dBcyAwYJn4QPbSMI0ir3syBDvUnqsE
	 LRpZOC8/yIuZDfSYvrKP5xxCsZ49oLdMOsvgCC4LRTuqyZ0PA1lesEk31832OHIDV8
	 Z2v9V0/86cXgmXpb9vU83Z4QgPTx8h2QAwJ77Ojj4fyLkq1FHUjrONPoAHfo1rkMEE
	 pztCajoMUEJsA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91E51C87FCB
	for <ddprobe@lists.linux.dev>; Sat,  9 Aug 2025 15:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175475399357.4815.7136556971715992692.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1f3dc72cf921d914403871e6e3129139fb251eb65e8fb6e0623c82f024f5898f
Date: Sat, 09 Aug 2025 15:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754753993
