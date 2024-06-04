Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58C96339BC
	for <ddprobe@lists.linux.dev>; Tue,  4 Jun 2024 02:05:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717466723; cv=none; b=C0N7lYUg9x3C6o1/dFWjtnK7wyZhKZLlHqhRsV+buIXzgJcjUPFekP6QCwTebyj7LughCFOd2VoqCpmEDbNJ5uUr+TinAOBWgjxaENqA2KyhiR9BuqL4QZYXCTdICumrY66E4RGbCvHnVlLcwqe69wAeqRHuIkTsnIWg+p189Fg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717466723; c=relaxed/simple;
	bh=xR6tAxhp30bVv2RJUxGIySUoBAvzKxEgV19+t3gAuxo=;
	h=To:Subject:From:Message-Id:Date; b=ctetw7ZlJnPsb4yIiak8vcjW7AKodVn2dlAy4FyHbk/jl4XBaST4caBV3Vsk8hSgHLPXO+Q4WhOZRgJ8573DW4RZqb68Um3Gp5oHnxJBuBrcRxNfLGKpjEzv17ZN69dYiDUMRUhMm8CsSvDQiSi/3lZAw9RxR+Wfl8q8JVFixX0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=N2FvPgYr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="N2FvPgYr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DADB0C32781
	for <ddprobe@lists.linux.dev>; Tue,  4 Jun 2024 02:05:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717466722;
	bh=xR6tAxhp30bVv2RJUxGIySUoBAvzKxEgV19+t3gAuxo=;
	h=To:Subject:From:Date:From;
	b=N2FvPgYrxUdBXDkQ1NUq5U17b4HyxxajfceZuFD9dDiaaTyQmkLckhp59LOLGjIV4
	 7AP9tnHfDV1j1GeaSYtgMD7OoeSH+ek16IA5ihTan0WhnBgqPKu9R7dzMqOyP9eDZP
	 G3MgkVhIXDBAxbhff1sVp//jbOOJSfHEroUnKP87jWiCjvAyEFVhv55DbdTGZq6ex6
	 bcqnjqghpzOdiJ+wrZcP+QogjB4fzxMCQ+7ucRjZQvwY9j3ZmWLULDRtWjXKfzmStR
	 +0J/hOTdMSebs+I5Fay81HKN0L7eCBdg4lR7WfHDIwnmaNEY2fbU0cdTfuceFRb4fV
	 QyHTes/+LI0nw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C370BC25B75
	for <ddprobe@lists.linux.dev>; Tue,  4 Jun 2024 02:05:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171746672279.25864.13561312823438750170.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2742ebde64d319db88316d84afabb38374ebce37dac6eca20995703f3bbf158e
Date: Tue, 04 Jun 2024 02:05:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717466722
