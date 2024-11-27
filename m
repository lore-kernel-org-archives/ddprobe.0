Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25CF829CF2
	for <ddprobe@lists.linux.dev>; Wed, 27 Nov 2024 05:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732685154; cv=none; b=Pbg/D4KcOwGJ2Be7aoKFvfnuITV/vPk4g1qq8ecEs3FUqYkLdDh5jSmcjKg7fQCN396UKAgzXxMaZmicJYRP5iE2P1v3fSA5hvkP25OQnkEbQU3qr+1FeBHkUylHzLWmUxJLm3esQgQMkLFUmKkikvCHP+FhLxnDsWmmRKM1Q2Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732685154; c=relaxed/simple;
	bh=0h3Q/edZbcKE0YxhKhZ1BkZmSlVme08iO+pYKdpykF0=;
	h=To:Subject:From:Message-Id:Date; b=E0e2vrnDfi52viAPwrVcvrWYyQiadZtSqXt9pndKdXpDgPEx06ZadRQLSvxz/QtCaKG2QxYKO1XmAlMklyj+7ImeJJm5RG5ye8rgM4OKlORDqtpH32cb1XLxNykpVzwcVnUSPgtl+spyh78IOwUjVSlUUqFeuB7iejg1WFAl1h4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z/E9UMoX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z/E9UMoX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADE4FC4CECC
	for <ddprobe@lists.linux.dev>; Wed, 27 Nov 2024 05:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732685153;
	bh=0h3Q/edZbcKE0YxhKhZ1BkZmSlVme08iO+pYKdpykF0=;
	h=To:Subject:From:Date:From;
	b=Z/E9UMoXTH3nirBiHABc5BWmA2NSDF9nPHAMNZFtOvD5s/tBTQVqmFD+SKN0auWA/
	 Zhz6mFGRQurPd2wabDC+r7kvxbt+dZV5H/z31Z1bwD2bAgmnJosAaJdqlIDIiOPTnU
	 EGhyWq3T6n46tmItAeNX1nWBfJqYCvrDqqrF6czGbL6J4LBsrf4oV13zo03SuKAeiq
	 irvDtzGbckSaYo+MIZ2g910gw9FnOOCXZWe/w5ALRQA7OSUmRkBrnavJh5bk5FUHmv
	 QbfDvJSk9nmQfVojalLaMV+sOdxJWQM5xhvL9xOQ0sSyEoAICSCNWX9ducaupfSKLo
	 mhtjpj84lbTkg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94C7AD3B9BD
	for <ddprobe@lists.linux.dev>; Wed, 27 Nov 2024 05:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173268515360.16217.3341272143772265635.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bc0866942a53c2daba7f198221f8d28e0ab9954ece4e27330dcd8307e2b90b0f
Date: Wed, 27 Nov 2024 05:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732685153
