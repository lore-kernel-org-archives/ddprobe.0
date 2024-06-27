Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E9C510A1A
	for <ddprobe@lists.linux.dev>; Thu, 27 Jun 2024 02:53:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719456803; cv=none; b=Ypy4hgZZjQFXgExZVDdcUl190sFBxlunedyo76qRc5zyr6X4tPnihrqMHgcT2CkzXIAdMaHjZWuAr1bJUk5eR3E9YsU6hqzsxUAIRdfBtWlh4KnVEwVu1C3V+Ai7Nf2Hq5IIXqDvJEfdoOcuL+lGcl7VYq8Z0UQGJ6phBfj5Hhk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719456803; c=relaxed/simple;
	bh=VDdbNiYRP1clK8KQyK2sLEBHRM7KOExj2E4vLvjQ00E=;
	h=To:Subject:From:Message-Id:Date; b=lRpxjh/pkM8jA59CW80C5e3V4Wx4mo6TQCyQEJ1N3+CFs42k4Vq8KVzPjsxJYTTAoF8dlj9epe1Lz1IQXRe0rsUFeY4QO0lC68Z/gP6Nb6yot4/lQ3fWvwGmjkc5aQprWxSQClk5jpPHWkvkngHkLndcfxgOdWc4ZJgWwcr1c84=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KTGWPqsx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KTGWPqsx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E94BDC116B1
	for <ddprobe@lists.linux.dev>; Thu, 27 Jun 2024 02:53:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719456802;
	bh=VDdbNiYRP1clK8KQyK2sLEBHRM7KOExj2E4vLvjQ00E=;
	h=To:Subject:From:Date:From;
	b=KTGWPqsxF88jvicaat7mjB54rAOR0XfSdcAiuqs2ZRRiGreVFESzIswU/lU8Pzlqq
	 bt8F3lKjFk8GP+uRVa32zROYjeY5UmFgnhBmL7Oa2fo6TX3FaFT+UNqmvw1e9AF7nl
	 ukyXMzIt5vUeIlLHoXIqz8ZjS7F+YfxmylJrUyFisNSCnaq7OjgT6DY/gB6SFFvjRg
	 UqpVvW+b8J99Vz2A3wi9ynN9997sD0lZK+BRC5uE80o6D0fOvtxL7Nl03OTph3buCK
	 MeL28JSYjNcU3IouLYbAkEBt5fAtCfDFC4yHhpvQ0P71Dj0iVNBpvItR12sNwI00LF
	 fF9Ka1V303Yjg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D1EAEC27C4F
	for <ddprobe@lists.linux.dev>; Thu, 27 Jun 2024 02:53:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171945680284.27447.8350225568605187060.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3eda95e9ae0ab74a5bcc5d72b4b9c5b005ff03c4db9134cad804fb3cd8c93cb3
Date: Thu, 27 Jun 2024 02:53:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719456802
