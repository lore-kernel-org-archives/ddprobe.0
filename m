Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41420183087
	for <ddprobe@lists.linux.dev>; Wed, 31 Jul 2024 10:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722420954; cv=none; b=Un7nQ2aCEm/I0NZYC1sT9lkqIQROlJLslA02m13BjKPet0F836j2hQBvUsUJwJK9O6XTVOLaF3xzvoaKP93sPgUeUZUHeg0w6NQLu089bWeQj5TQkYJRbpSwvRS2sJh1YcDtUMyIX/u3ZkARE0GG0nYXCqKiysFtyVJjk3s/368=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722420954; c=relaxed/simple;
	bh=ak6A1qrrHF0f1Zo/+FzYQm0aRGzp4ujAyMcTDgCDYYM=;
	h=To:Subject:From:Message-Id:Date; b=dWIyIONcQx+a6Mh0Y90tewmXaEBpWbdK4k824q3JCAJ7Ha43fxjROcLr+TLL8fhqWBpIwHHBuPs0pet5/Nf9dRvha8k/tSLK0lan8dS1ygdM42KZbK5oeVFP/Tavy+hYbzAVsE1AUZTH0+/BL6rthQryPswItBZqzKHaVSf3qOM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cfdgz+MN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cfdgz+MN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF0BFC116B1
	for <ddprobe@lists.linux.dev>; Wed, 31 Jul 2024 10:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722420953;
	bh=ak6A1qrrHF0f1Zo/+FzYQm0aRGzp4ujAyMcTDgCDYYM=;
	h=To:Subject:From:Date:From;
	b=cfdgz+MNsISIOpQ8fJgZY9okMBPecG0CnslklycZY+YuEw2H84koI0HRyS6iaTHvH
	 UMOL8G13MTl7LIrD1eL6/3LNaY2Jmpw6KKyaXW6ajyaN2kWIUSck4ua2UR1gngidm1
	 3b/JGSzJCbSnvKZ6Udg0ZU98nhQHWEJbDcIjelJuit75Vr02KhKbM7ZhyCDxOZvwYk
	 fhZI7swOeGBpcqp7O0x01jFIc61GHh6hyiA6dwwpKzHYqIwxiIECEoRI9zoqsu9THu
	 Vrt6fbmSMbX93G2vufI9BnItUL21FMaFubMThU9sGhgmV5VM2YLY6X3ojdmOumLzgH
	 ccRz7ogYCKz7Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99DA8C3DA7F
	for <ddprobe@lists.linux.dev>; Wed, 31 Jul 2024 10:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172242095361.19565.6211203367819327482.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dd83f1976cc647ede2ec3eec42cc2a77e7d7ecc4334a434827667115b7030742
Date: Wed, 31 Jul 2024 10:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722420953
