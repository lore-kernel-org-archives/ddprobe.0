Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50A363DA7CA
	for <ddprobe@lists.linux.dev>; Tue,  4 Aug 2026 23:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785886834; cv=none; b=SqO/F7ue0c0IgUkNQSdE9a+9/NDfMuqalNvlBAYTfP8oFXEVBsKXMFJuc7zBsD12hd659WS4LMqOHT/salJtQ/h7TkzoW0t5b+RGa5QHZy1bsCIBrL+1pH0T0w0YUyDhhlT0srSVhkEX0uOlAToX4ikUIb0J08aB87590NAEnYk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785886834; c=relaxed/simple;
	bh=4a8HR1jP/DNR2h7VVhmHmY7flOcoc2BI32kbhU8fAvg=;
	h=To:Subject:From:Message-Id:Date; b=GREwfgn/CUqql07UsdHQanzUXdCoUMbpNZdwiLB/uV9wREd65seu2FW1SgtIhPH/WjZb/FPReMe31udvfPFKFhs/lxSuSkXkAurz/Uq1Re+BWkQCDWeb46qzj4P58MMHHn1VnWOBfjxJ1rmZMerJyXzsxLj+fgaPUiuhTJVKm0M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ePIBMkSo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ePIBMkSo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4358C2BCF4
	for <ddprobe@lists.linux.dev>; Tue,  4 Aug 2026 23:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785886833;
	bh=4a8HR1jP/DNR2h7VVhmHmY7flOcoc2BI32kbhU8fAvg=;
	h=To:Subject:From:Date:From;
	b=ePIBMkSoQfow0oBoyDRPIVP0iCkWruUgZZTvy//UmdVHxUIRwBIiT2ws4ADZJiJhW
	 6j9SDaCNL+lblmrRDWdiOH0JAtYnC1AO5WxtTJ6kMPgvWoyXLMIV5DPgE+FYeIIzZ2
	 Z6EQ9UIywjaR+t34wjcQlHuhnyHX0fkFhKGRqApirIBI2REq7tC2Re1cSG5Q+6DwBP
	 5JOx2fhcWflwP5DAFHntCq5MNvIaC8ggu2WagDWEEpwDla2ep63R2MQk/kK4TK1I0A
	 ZrlEQL5Etmjpv5ooae2lEmwvyfVv8bjg+4Q9yZMzl3+EamprNC9co0y66nfc9B8+5N
	 id3JUWHh316Aw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF4A0C55184
	for <ddprobe@lists.linux.dev>; Tue,  4 Aug 2026 23:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178588683369.1010.100386871474689438.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f9264beb55953c6a6c33425b41c9544ca239a2ee4a06b6b9f07d9dd6ba94874d
Date: Tue, 04 Aug 2026 23:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785886833
