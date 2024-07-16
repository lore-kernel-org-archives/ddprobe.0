Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6DFCC5FEE6
	for <ddprobe@lists.linux.dev>; Tue, 16 Jul 2024 09:15:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721121323; cv=none; b=RSXOgEllk38lT4fvASdja4ixAQJgCS5hOQdRWr3rlbrqJfCykgZbG3lvtwiSJ4eWfZQuXrdgYX8MxHn6eq3C6bN1g/HyzOJiJOknsUvfBuh8IHRx1qh9REUba7iS9uXdQbm9LUf93YSXmPWXln73gUfbSMFYkumxIsIBS1d7yQw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721121323; c=relaxed/simple;
	bh=2L9X/Ib8s1yvhuajhJVeDmfe2FzTMqhUauukoBS3OkE=;
	h=To:Subject:From:Message-Id:Date; b=O/AvVaUmNlKQefIyCjNGIhSXidI+SB8ONGjolK2GZWNWMpIfH/d4eaG/S+e2uw+u1rp727dWMl/VCnzbWOr3y5i++GKZQmos2sJbWhkGFSBbQZK+pAyH3RM9nbbHisk4PZQfeeyg13zonkClCetfUf88yGa1ucrM5kaxYvnrUho=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TOeq1Qsj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TOeq1Qsj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E0A27C116B1
	for <ddprobe@lists.linux.dev>; Tue, 16 Jul 2024 09:15:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721121322;
	bh=2L9X/Ib8s1yvhuajhJVeDmfe2FzTMqhUauukoBS3OkE=;
	h=To:Subject:From:Date:From;
	b=TOeq1QsjE1CC5GUHtLtrfDQbepmNi4EWRCyiu7J4dV0Bu/0j6DdLgGv2BAnyJ3qbK
	 0066EeRuN4cG1OQWiIcTGnkCRrDvtFA4bvwd2tX8tZYr1ic2SmqtnwyhXYTrl4AKkr
	 xDuHWr1u5crW0gQS2j62Z2K9i15cl34ZZZNOKsVIjmjNQ65Sc8jpBEDC01IUatFonU
	 1VHNE6zP28jw0IK2K6/eEAQHio1Dy2S7wQ0RmvkVAc3IXzOo3tKtW87CYJY7WvQU9+
	 lIaH/UfuK8qNMmr99ckJi53/w3w/YaPG5RvVJ7jpExg8iFszzNTzZ3aqmGY8PsLtup
	 Hiv2DaSEo6kXQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C9223C3DA59
	for <ddprobe@lists.linux.dev>; Tue, 16 Jul 2024 09:15:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172112132281.6917.4050163219238977381.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2fd669880113cd5b3ba7b4da76cd5c152765c273e13cbed1cdc93e14b570b604
Date: Tue, 16 Jul 2024 09:15:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721121322
