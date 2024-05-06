Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5619277F2F
	for <ddprobe@lists.linux.dev>; Mon,  6 May 2024 13:42:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715002943; cv=none; b=ED8BOCeF0m1MMbGetdSrcMZdR67DkD3VtXRPpmvwYG7InFmQN8z8UcCWKuDs6plv0wpkTgXdVVRFM20QBDAgbcFCZVYbV/UoJzNv013s1oePDO8O2y7a4KSk7OsLT5z010JU3rd3r7seKXDGm4nGJp4N5RqP3QRM4UFfeoZK25Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715002943; c=relaxed/simple;
	bh=dEVz/sb2lRXxN+ChnP4Q0WuNqnpvu4+k5HGHxDTtW8o=;
	h=To:Subject:From:Message-Id:Date; b=VpEBxa6ACW3+mEbASIsE/PCjFDX90ZR5lOK+uVFEJTughlazwYil0e9AZ+RYbMqiEL1OjBjOjdl6cn2JpXh0JoBLxdy7+j0ZXo4yJR0dRnWC2kTmj+83enPoCnwoOKvoSd8d7HS00dmDUx+lheX+FhpWOUJlkpGzkQtiKteLWdM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IMd3iCt1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IMd3iCt1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3D50C3277B
	for <ddprobe@lists.linux.dev>; Mon,  6 May 2024 13:42:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715002942;
	bh=dEVz/sb2lRXxN+ChnP4Q0WuNqnpvu4+k5HGHxDTtW8o=;
	h=To:Subject:From:Date:From;
	b=IMd3iCt1fnISuUwDAz5sbkT/cjrh+7RZtE/f2dHCl8KOZtzDmNBxdbfPalYU+MW5H
	 E+YnKmkEdQ3r7NYcGNhLbSvXJvDuIUqJ1m52TaQ1by3u/uiIeMPjqxqhaOtlpE5jqk
	 MAUbWHKn+RMaiA8zQlIeyIRnuL/0uk5VN61Fmdyt6fXK0vgLaV8ucU0l/OehUz2LIt
	 qo76O1OohblH4qMqyvdFH09aMfDuPqyOqYpx/JvyUAz74UP2cXp3Tp88f/QP6IRl73
	 i6XqOKsfWSKRDk8TjcLQ2fozRgWPOJF/z3WeaRhted5JSeDhyuiDSEN07u1f2ZemDq
	 CH+p46Y7JM4fw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3E14C10F16
	for <ddprobe@lists.linux.dev>; Mon,  6 May 2024 13:42:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171500294277.12330.17773599832492217027.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6b16532464999b7dec90df892357987545e98476bb3ada4ff403cd2f8c37cd6f
Date: Mon, 06 May 2024 13:42:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715002942
