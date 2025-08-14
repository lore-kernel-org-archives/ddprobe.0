Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2ADA823A9AD
	for <ddprobe@lists.linux.dev>; Thu, 14 Aug 2025 07:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755156594; cv=none; b=ExIHIEHtdq0begqyD4c5yJLfgJWDsekpNE0Gfmdw7sCTUFmQuqfuqRQlC1cmyckEQCNmnfQ/7IC4GaLsx0o4/ZOFZ4SCYfFAG1lwr2bfhGdjda6lJJcMHQgjB11Xioi6CDYNYrOzt1TVqKgLlmsn++F4oHe2K9HuASoVUrZghUU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755156594; c=relaxed/simple;
	bh=opOjs6BtNAkSm+PUsYMNXsNTQ2Ezr3Wbo7CJlna5+8A=;
	h=To:Subject:From:Message-Id:Date; b=cu+rT0OkwPMQyRPktLQTAFV4MD+zOchr3iDS2lHZiu3jDqng71vxoJMs5R/Ixh26ZyCKYHv1NVylRd21HT+6jTVO1RRKrQNqLvthJzIkkuk9R6FW7iCM9jZvTcauDh1S0b8qCMiVUuL/LwdYqgUeh9MlyDB3mB9Ec6FzabSsvos=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fpAcmN90; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fpAcmN90"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0130C4CEF5
	for <ddprobe@lists.linux.dev>; Thu, 14 Aug 2025 07:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755156593;
	bh=opOjs6BtNAkSm+PUsYMNXsNTQ2Ezr3Wbo7CJlna5+8A=;
	h=To:Subject:From:Date:From;
	b=fpAcmN90EyI0lgpgn2+IO1j8+P4tKoaECKnabAwjsqI42qmXy4BjcoNUfnh1iADC/
	 gwmPqpI3tEQyibhGBmlqw3W/VuC7C7tE5cMUUP59EEsw4si1mm7gfhzgKBkLqUnP/t
	 CAPPohlCuYm+TrMgfbRcqBgWS0zAs/qF5DkpbBoLOhK9ggQIDNdtczhIB2QKJ27W7+
	 YqHcyul6PpV+mNAmYRgXRJ7AoAGwOnIRfp3iv4OjIDE6Y+XGOV+GqCYT23RSsEY9W8
	 pADYzHE3utOQ0oF05REsKS9GKV+UmZEpXzAH0lj2uV4ZDNv3tigAJUbxEl446mVr5F
	 xkFq1kPqx+3jw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 915C9CA0EE3
	for <ddprobe@lists.linux.dev>; Thu, 14 Aug 2025 07:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175515659357.26062.16549300819319012500.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a33cc60a84ee3dd094c0c3a19a0223cfa98110ca5fcfaada826d20f5a5846505
Date: Thu, 14 Aug 2025 07:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755156593
