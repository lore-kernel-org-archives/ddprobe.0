Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A71FA48
	for <ddprobe@lists.linux.dev>; Sat,  2 Aug 2025 01:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754096994; cv=none; b=maPXEodviOT38hfGOuIr5eJwVAfZRqDBclETrlk2QLWI6vX8OwUGqBF86gJh7b/5jVYPLlkfMImNG6thi40iEkDsZHxTO/S1DKqgbShnHdjk5AOHBgGw6Te491ZWljuTX+vviNfFY1gDlh6Z0nNesyk7sKlU1RY69Ka5J6TM+Sw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754096994; c=relaxed/simple;
	bh=/nS8HZ9r6vCKZr5jDY80niXBpsVYXfArXRrbdVf9YHk=;
	h=To:Subject:From:Message-Id:Date; b=rpYMzASMbeslihPSU7sBowebXoX/LBSBegF9OPIrmUCv8F91THBoOj+/DgVvls7fUYqe4hWhIX8MofpSZ+ma5vHMV1HmKnIZ1mQBmwPdW014D6smlc5dKhlvczHMaTgJJCoWqc82z+QCYkVMYIa78Iipl0VH+qVaFTk5CKAqDJE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kSYVwn9I; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kSYVwn9I"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5CB3C4CEE7
	for <ddprobe@lists.linux.dev>; Sat,  2 Aug 2025 01:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754096993;
	bh=/nS8HZ9r6vCKZr5jDY80niXBpsVYXfArXRrbdVf9YHk=;
	h=To:Subject:From:Date:From;
	b=kSYVwn9IVASfVCb42lp37kYA+5ocJL/Tq0CV5dq0QkM7puBmMRUF2LInrm7sBoA1U
	 BoXGICdOP6xFzFGCdnBrzAjDxPGZKp//wkCXl7BqO8KkCJDLacbmxkAmGbHB8Dy4TB
	 mZfrI8NmF4ATV8CT6oQ5wcj5vspNKOydlRdSmTR9/+aQeBEAZbMg7oNGh6318Jsu1z
	 BRR9K9DGgItyaqPwVqtHfLzojRjs7KXy7K2oQZW1usVWHV9wibQVZs5u4rI+UWmgjX
	 th182y2daGCD1psyZG7oiLLULV+FMBIW1l3Ug4ymXhWcv/uYoDA9jWkcMJf4r23OoM
	 VWCXseh0xGpjQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 943DBC87FCB
	for <ddprobe@lists.linux.dev>; Sat,  2 Aug 2025 01:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175409699357.15393.16602424320111629166.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 89bfcf8b0717596917489caa56bb3464f6e0ca122df162058fb89bbe5c4b777c
Date: Sat, 02 Aug 2025 01:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754096993
