Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A38A2111
	for <ddprobe@lists.linux.dev>; Sun, 11 May 2025 00:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746923994; cv=none; b=lCf1/eNc6scK5jxMGhY7CGnm34HKND5zN31ufDrEC183N0+Thisz65NcN5ip3AXTMusE+1qFi1r6+MP/Q0vOhBu+qzo5In4Acu8bw7lkV5WxX2JJA1H/H+3bHk19fANx8g0209KeNgTKhjginztmjEOXyeqbLIgTA/phfigvF0s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746923994; c=relaxed/simple;
	bh=OcNHilkNj2r6iZ9SlW0lK/nKZLeMdD6dDbHdTS5u0KQ=;
	h=To:Subject:From:Message-Id:Date; b=reo6GYipvX9O/3zkn+R/AsZaMkVUT97H4oIjRXX7h5rKN0ILsc181AE8dHtzNXfuo9DgULNjj2lzKViizNK039vOgsrtKydla7bXVLoSHhTtZSgpajossVm9v+j0hLiCGETm4MN09QDd5BXv8xdrzPSpljVZ6KUX9OlEyjj32UY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GMZ/9KsC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GMZ/9KsC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A44EFC4CEE2
	for <ddprobe@lists.linux.dev>; Sun, 11 May 2025 00:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746923993;
	bh=OcNHilkNj2r6iZ9SlW0lK/nKZLeMdD6dDbHdTS5u0KQ=;
	h=To:Subject:From:Date:From;
	b=GMZ/9KsCMJOlCj5HLHQ4VfywbzdqYMDWjkURgp0rRXkTGyqD8jQAFRpj9/F5JJ9tn
	 qmLiWyOoBZZGhp3tKhgqohNOc2VDrPAutwJfFRc7buMFtc9036DMQzv8IazdAh08JN
	 2SFHQXUjrDpjey6Er3SvvWVtC3VP2hKEkCl4AXjqw2iaFUtJc3+nsXhss6DctwehTU
	 ss+oHEC0YRaIGhcOX6TsdExgP+M9TeHmBPsMedwNPCD5VSVBdzwTcWTnEA9ovPg3ER
	 br+Ul3/ZOFSQgl30RqWJV4tHZeknrau6QyvYKZ4i2f9R1452x21pDcWks/5KFSMC+c
	 HuBeJbP2FY9HA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93C95C3ABC3
	for <ddprobe@lists.linux.dev>; Sun, 11 May 2025 00:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174692399359.28049.2971640227033006864.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9cb62fd72492782c87411f08477b9df2170f15b132928c97e1837a428a845648
Date: Sun, 11 May 2025 00:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746923993
