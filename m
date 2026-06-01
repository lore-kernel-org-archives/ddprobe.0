Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 305D6360ED4
	for <ddprobe@lists.linux.dev>; Mon,  1 Jun 2026 11:34:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780313674; cv=none; b=LmyfdZZQJ3B8iVJNtRyOgHvaE5zqSo2cpQB0huXFQ10LoIwLcQj2an3+qP2opuN563KSZum5vwhNH3WzrUI1CHjUbvmjqBmtyypkwd0HW0NEAd+Ih4G3ejpmAK9JoYYM/isDt9qyC6SZZf7LhmOdVD9XKe1oUkAhwzs/C42wxvY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780313674; c=relaxed/simple;
	bh=iCx7nqbhRFBUAA35ySKYSEk1uhz81N0+neXyCLiyHV4=;
	h=To:Subject:From:Message-Id:Date; b=gmNBSnBreGeLhj4Ka+wfwaXKx5Upxx3QOP5tGHFrKCoaIqIdGRhVMvf9IWhETMaE6kNs7cmGhW+cxBOdVxsuTQbHHXeE6JfvA2YJabo/Q1bgb61Vhuf7EFYXfEy69mZB64VTkXeKcCfN7H/Mj6ZaiUB3wXKtplhwJmOLkyHVals=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ff1TpZfa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ff1TpZfa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE775C2BCC6
	for <ddprobe@lists.linux.dev>; Mon,  1 Jun 2026 11:34:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780313673;
	bh=iCx7nqbhRFBUAA35ySKYSEk1uhz81N0+neXyCLiyHV4=;
	h=To:Subject:From:Date:From;
	b=Ff1TpZfaAN7wrw8uzHNQLuxbhwG/CEifPF7j82tI2BaNPeOn+LKu6ng2/hWx3j945
	 G8Z+0QWeirPigFEtLMTh4UC52zcuiWPkdGrLgyGgVIHkoosKxdUH7uYOE8bBfpEYq4
	 WcIqdE5htimf2XSBhpVtQxr5r2Q1AWx7p/IN/DNu77Ml7k/QbrDehcziC4ZK8Vac66
	 AnT8Ijakad0G759jxz9A8ha3K7ytNMrEx47Tz5dGgLJLarNMQrI8/o/IipkIH3ocva
	 yhbihDgP7/vZZ4wVYwOplzYY8HMoW6FZttKo5JniLsBZO/EZxWYIuriQJL+wYgpwKU
	 vh1IR4b6A/Tlw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B61D5CD6E56
	for <ddprobe@lists.linux.dev>; Mon,  1 Jun 2026 11:34:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178031367370.11409.14151425237731370224.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6b9399d138ec3cd62f3309d0daf999613141ee05e6090c5a884c98872e27a608
Date: Mon, 01 Jun 2026 11:34:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780313673
