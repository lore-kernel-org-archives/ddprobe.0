Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F819372B51
	for <ddprobe@lists.linux.dev>; Sat,  6 Jun 2026 13:14:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780751674; cv=none; b=jRjH6LtrQsx3n4YD1rcj1Ll01DiPRuvVYVTdDrHHw11a3VtB0PSd29KzMeMKPhjUTr6ngALes2C7SX0HizcRC1tavcqbKzrxQKXMXKsR4Fqxcq0WnkILOa+HReg8UzsTbFJ3mbf1sv4KW7c+JdhS7MIUxsKFe2fL9nQ8weZhThM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780751674; c=relaxed/simple;
	bh=Uxfe12GjvI/+n/pUabcm7OpVVZinzhi3cJP3zhf70Nk=;
	h=To:Subject:From:Message-Id:Date; b=B+2lKjndfcHJJh9J+UeMw0FXy85kvqQfLwq8Y1wlkqvIZxlzCSpSlgG9M6ApqidnpUYbZGgGrLbnIfCQZNb9zARVgFSO+lDAUoEFYtYej2qoYLpon8zqdQhymvjda2JPnxxKgNvN/le3IcVYgFPB15txW5WiXsEvvecFhGixwdo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ARFWxWhh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ARFWxWhh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9DBCC2BCB9
	for <ddprobe@lists.linux.dev>; Sat,  6 Jun 2026 13:14:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780751673;
	bh=Uxfe12GjvI/+n/pUabcm7OpVVZinzhi3cJP3zhf70Nk=;
	h=To:Subject:From:Date:From;
	b=ARFWxWhhWnJu5OyEmfOAmhaIKc6Y+c313fVb6NwW4urqIIXcoDmqecPoyJr0XzvRA
	 Rr8C/8p0OPDh0SapQis9VxmDC1KmE4c+TeVwzsYg2r8RrUyUVcsqeMYQx54+wNHGds
	 VRWpCR7yMKL/tsbm/Jh8WDzouzPDz2G0/wDCFduokgNzb+RibM62Iw03LCc1QlldFq
	 AsUM8MeIPf7a6aD8nQRKLmTorQxTI2264Be6kLouCU4M5k0rM4Y7PQaZ2Hh6k7m+J6
	 OoIKi2q2s1PyHUPgoBBJ+V8Ak1diVxUhFtyhCwDL4IzJyN8SYCmeezsosecAGXIt85
	 voNsGsM+uI/2Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1BCECD8C8C
	for <ddprobe@lists.linux.dev>; Sat,  6 Jun 2026 13:14:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178075167369.4204.15079727825394599774.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 849f8453bd1d753967bf23cf70d55a191d84ccaada87a4d2e68744903a189f3c
Date: Sat, 06 Jun 2026 13:14:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780751673
