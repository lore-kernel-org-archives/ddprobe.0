Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 225DC50276
	for <ddprobe@lists.linux.dev>; Sun,  8 Mar 2026 09:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772963094; cv=none; b=Wq1ZOPbbfIhlk/PClBHpUdZ1PUiPJDQtXryT1h41F6Uhi8qd7SHNttsFM4w//SFIzzyknxu8gMj5ruYQiM1nKlwH6hpFkqy5AvT3+DDHY1pAav1S/doP5gOqKgYHg+NRFFRlt7C89/ZOTLp1l3MewXOa41aV/JXS3v/QnHJOChw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772963094; c=relaxed/simple;
	bh=LM2C5mSI7PMOUgMXsY6b+BcGtloN5uVC/4/WAEYT13s=;
	h=To:Subject:From:Message-Id:Date; b=ciklg3NkG3L8hjvylsNHIpH3tloqmLbbFw6xlUBsisqPUSd8aBtWcwlVrGvmPcvP6BgUAZA6DX3yaTXoRNjgeJZ/Z+UqSivsk/gNRZ19KKm4URHNcxcL3Sm4CupF24PbXGHstbjizm1b4DLN7B2Gg8nfvMIHJ/dg4DKV3jjg1RA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Rb/zF2kE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Rb/zF2kE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA435C116C6
	for <ddprobe@lists.linux.dev>; Sun,  8 Mar 2026 09:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772963093;
	bh=LM2C5mSI7PMOUgMXsY6b+BcGtloN5uVC/4/WAEYT13s=;
	h=To:Subject:From:Date:From;
	b=Rb/zF2kEqKQregOruwbVi3U/UElEjM6V1VuGowg0P5dRGLCRETL8wSZejltul1IiM
	 fBOTfmKAj0WpSjuS2Iafb+LIlh4IAnePK3+We8bsORi1Vf+36LU4e0usUcbkgogtlb
	 7imdWhxk51qK/DaWVAfX0aszYb5ZDmBr9E2Q4Y7yZI2nIWF3TDuHuhT4rEoY5fKtsV
	 zCKyzCirCGmej095ZeyxDS4rXlADVmc9lTBTCLVMIyzYad+UIYeZ0jGjEn0FAQxqcB
	 deRabmV79e5Qh8N1HZTTShnRI9g6E7wCZTiO3NILC2liceRx9JTnEz7swuE8fWXjs2
	 7k4AVIq1swcoQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92335F55132
	for <ddprobe@lists.linux.dev>; Sun,  8 Mar 2026 09:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177296309359.9424.1268371290044330103.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 14a71fe8dd53f2236cc8d4798b152be0f07c38c2456911bbdd48ddf6fcc5eaca
Date: Sun, 08 Mar 2026 09:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772963093
