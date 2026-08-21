Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 74EAB2236F0
	for <ddprobe@lists.linux.dev>; Fri, 21 Aug 2026 15:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787325034; cv=none; b=KOpCDL7yqT3FU783gFmpQJnEno+MURtS00neTMoCDDtVQeorqFQEitNhxMG8QVl4Pu1jvZTMlKR1xqbR5e3WvrCpV4fILlB4ZlhIrIfKcY0Ln5OHK8Hv0zcof6jT14Fxk7/WWTmyFxiQhitpFMnY2ItErPaLVQJfJ6InArxrSzE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787325034; c=relaxed/simple;
	bh=z4NftsA2nyjp3hZLfB+oUOks4WE/KrcVr/lq/Jisu44=;
	h=To:Subject:From:Message-Id:Date; b=e+3MXr05BhQXrRT/zsl6r1VC2Qsux1v8NjrwGD+alWnCmnJ6arambr5dVDvj3vzj4E1UhYlML5bUP4m6VYWgWMupPwql9yFfoR7bH4pbMuoTSmyOEtnPOkIRxtHHQrRIR3hiwyjeps7JYQGezh0qmN+w9xtWkUzktQTrs3mCsuo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZHg6lwt6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZHg6lwt6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E6372C2BCB3
	for <ddprobe@lists.linux.dev>; Fri, 21 Aug 2026 15:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787325033;
	bh=z4NftsA2nyjp3hZLfB+oUOks4WE/KrcVr/lq/Jisu44=;
	h=To:Subject:From:Date:From;
	b=ZHg6lwt6NEsa1FWOSvSmBc0ElLXvw+Ex7K60NEWGFQOEAaAdiOgmvMzkDU6NLD3/V
	 5XefbSXRxvWG5q/sBOtVnPP4YyeSWKxKIy1tJG198Zy+dO4UArsVD/VTfrhP7u6OqK
	 IwmqcGS1OMsAxh46J7yh0IPMKEhNXRleicVNRO1lr0YqopUUhQ+TFf2FJUg1jPZMVk
	 U9vonqAe+uoqzNxODOkkc46ChfIzWSI4gEISKTW2Pi0hroIyM/+CAZAQunV37+8Z1n
	 u6HbY9leaKSmpPDHaVBapbWJ8P8Cbz2RwNt7JTLJqFZAO6GXdClqijI19ludISOI/W
	 OYbILhlFmQEeg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B9924C5DF93
	for <ddprobe@lists.linux.dev>; Fri, 21 Aug 2026 15:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178732503374.9174.4665254376239159869.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6757fe15f10c59ac424bb5925481f59c4470713693e5444d30c18a2770feb351
Date: Fri, 21 Aug 2026 15:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787325033
