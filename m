Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19D6219341F
	for <ddprobe@lists.linux.dev>; Tue, 29 Oct 2024 16:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730219754; cv=none; b=V+ri37VgMpGljWm0zgWf7qiLO2R1IL55o1tEFfWK9/YCatDsP6YCq1F/YLn92Rtl6kftgxM/U8k1JNjEPZDVhYEAh1ac/+NcQQ5KYKE9lMdNpMDBGbON8Gg47tvmt1hO4J1v4dnUImAtC+JWoqYa8+QPpotxffTgZ83Kbd1OAWE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730219754; c=relaxed/simple;
	bh=xMbZ8m/fR6iMIItfVZaAwvJ/E9xlVzmy5vjzPxsRk20=;
	h=To:Subject:From:Message-Id:Date; b=DK9HS9Iwez4OTyIjXHZ/6MJ3HfLBk/LoxPb9tzC10b8zFJNMy8WbnpQIkl1ZM5uAmw1zN+IrvAcGdtozN5zN0T3ApgJ3zKLT4ZdtpvWZ8dPw+mnX75EyqyaYquZNKHgHMLZAcoGAR5W5fi7JajVXaC7lzSmbThsirx3NMqUJoXc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=N9PC3QJY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="N9PC3QJY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6BF9C4CEE5
	for <ddprobe@lists.linux.dev>; Tue, 29 Oct 2024 16:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730219753;
	bh=xMbZ8m/fR6iMIItfVZaAwvJ/E9xlVzmy5vjzPxsRk20=;
	h=To:Subject:From:Date:From;
	b=N9PC3QJY3suRXY/uFdWRzaQD7dREf5uo9ZbBinSEupYodydf0GEzdaZ04pZP9HgxD
	 vbwrI6MjSF5bk7NEXKf9Y5tayHb4ZrJcQSY0NsKkJsNWgYnGFaxp/MS7q12UGFjzaF
	 eNtdsleaiD2tPYsqIVZfpWyvNYuFZwRU8fIjBgEOUJuetFyPTEzfsN3c5wbFtGsYfE
	 VBDjUtciSnkBLzKf+RRE23chAKwS5ejl0E4dKjFpmSRZ7RmowwTKG1XNJe7zJdCgBx
	 lYhNmEJLasYAw+xzCP7FCA9w5YWk1pEEHdQgYLhNiTHIJIwIpmshP0j069YZCtUlSO
	 5x5WRTwdX/yiw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94916D3A670
	for <ddprobe@lists.linux.dev>; Tue, 29 Oct 2024 16:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173021975359.20636.14086176775375161751.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 92a97e981cf9a17799c9297a76392bd53c619efa1bbccd509c036321cf960a84
Date: Tue, 29 Oct 2024 16:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730219753
