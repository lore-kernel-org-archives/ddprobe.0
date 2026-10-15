Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7932F47044E
	for <ddprobe@lists.linux.dev>; Thu, 15 Oct 2026 07:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792048834; cv=none; b=J3zOEsufxiFQlFhPfJoZq3JYz3SudPllSlTkxvQdDY01UJrhzVuykAfyktfMb1maKQhlLJK/bJbnbBvjp1jjKMry0hVWS+vDZfAzzqR0XjmkZ59T9TuW8LqRdcw5JhL1poC6+LoFx62pT4YsiFyfZfOOHqIPxwFQHn8crf/8WZ4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792048834; c=relaxed/simple;
	bh=l0H/zzpjRqbyqlkFOYoct8kAT/RG5Wv7TrtYFpielUI=;
	h=To:Subject:From:Message-Id:Date; b=SLZCH8Gj8XyDxa561c6MxZFq/zLPhsKgiTxGS1d1nOaS3jMGlif+4OXG2ygwGNgFRuks5Qzerb4+bBCWkGOQlo/8RrTJ1cbPB5BzVrrHfKxM1GguIsID530R7THAJZKS+F3m2KycOWl/IVDpkLFD2C9zYZYBBlLOnpzIqHR1IVk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B5MmeosC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B5MmeosC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D09D2C2BCC7
	for <ddprobe@lists.linux.dev>; Thu, 15 Oct 2026 07:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792048833;
	bh=l0H/zzpjRqbyqlkFOYoct8kAT/RG5Wv7TrtYFpielUI=;
	h=To:Subject:From:Date:From;
	b=B5MmeosCdUOFme0izHa8uQL9JHh6gHzOcsVLMiTJbY6PzEsr4nn3KVxbju8ag5mYc
	 D1tzB7QD9GpZbh1yOf6mropHgAm2sOTnW0HeToxgXthgKdEzGvZcebtqZ7x1WF+uZ2
	 zbDcw7UkJV1fFueSOJ9W3Ij0Y9Q5LF4/I49srBFNXbOjYKnTBfKYVBLsQI0+ETaS8f
	 llBv7VuBBBGYafMHsHaD1itULYZuzcMj7XJ9XUdPIdB+cATmiBQpEk5lllFVN4AUmZ
	 GEVN7CnmcedPfbSaTyQ3fVvw/0r+lqYE2KbO/MyzqCg3tNDRmaKnWGaYmXqTQ3gkg5
	 fc+qoUHQmjDlA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC092CC6B34
	for <ddprobe@lists.linux.dev>; Thu, 15 Oct 2026 07:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179204883369.15050.4980171366025226529.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bc2e537829094c36180b4d2942fc78c97c1a858301c44230691779ba183165b4
Date: Thu, 15 Oct 2026 07:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792048833
