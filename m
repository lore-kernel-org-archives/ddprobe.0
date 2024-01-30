Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F474679F2
	for <ddprobe@lists.linux.dev>; Tue, 30 Jan 2024 12:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706618897; cv=none; b=kdZyk4nu6lpaJksKGxfsKaW510x/zknOEnyuAQhNNAM6TsUxZEUwO/TrpaGhkGPmDt7JZGgZx0z11ZNg5O2VzyfLHjxDOy6ARfTnY2nBVfxUATb0SpxRg7VN7IiJISJTe3TBSfIbj5kptFZcuCZarmxZsW8Bco17BHbc8Zrupc0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706618897; c=relaxed/simple;
	bh=hQrYFMx5vJ4xBnj0vVk2+k5FLZ8sdLalVijKbt5kGXo=;
	h=To:Subject:From:Message-Id:Date; b=OdQ6NfNEdaMiYcULU9m88Zpjo/ygxfMpiSJ4+d6b+LSxRBO1k5oEY0xqZRO3Zpqm5AUZ5DzDOK6OL0PLOATgRs2sH3wmGCEve/tj7Ib8KXnY8X1GBONp4GqDIsrsL48zlGeRG/qjLizwBX9ZQk94ZY9nZhKvSpx6GHB4XVvnp8g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ukedQ5bC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ukedQ5bC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 761FDC433F1
	for <ddprobe@lists.linux.dev>; Tue, 30 Jan 2024 12:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706618896;
	bh=hQrYFMx5vJ4xBnj0vVk2+k5FLZ8sdLalVijKbt5kGXo=;
	h=To:Subject:From:Date:From;
	b=ukedQ5bCdjvha6hzqJJQbaDdUECoLlXikSpDRLG2F5miGDn75zqnSylcI5mj//eKP
	 fXZfnfHmxj4g/BqtYfxcdxPaEXicMvW3GQgGehaDQt+kypTeJ6y9P1XEcjvVhOSxUY
	 7BUN46gqQp67+geFNPmufmukeo5SjdRnu8HkmtqLUS9IkUWfK5sKt4Jb15/4nqrM87
	 Dk7EYDitx+sWyAo5HR7MjRcE4SuoXin1oHfxhfyzbwGsx8t4ZyvdDTLx8bDjffEDcu
	 8Fw6TqxKlh7pYPHZXmyUk/80ZRAXnudfzf2FigpQBzitTgJr1y40XtYqBKj8aOEtE1
	 18pbhspGv+47Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5BCA5C46CD2
	for <ddprobe@lists.linux.dev>; Tue, 30 Jan 2024 12:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170661889637.27594.17225561012901661883.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6974a65873e0b3d2d05ba95b9f119de10b7348e5faf3e77266d2c242b7803418
Date: Tue, 30 Jan 2024 12:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1706618896
