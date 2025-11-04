Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B5D51DF25F
	for <ddprobe@lists.linux.dev>; Tue,  4 Nov 2025 22:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762295394; cv=none; b=RR+SIVVCSbmQjMI76KyO9/IIOnNyEgbwSnviT7usQsM1FX2OkN6dsEQH0bmmX03tu6EGl1d7S4qQWOtVYcyZHc+gnLZ+zZW90o8FjN4dtTaPFVexHfTV/HowHRwB3GwvCKgeflAvKrCBfBjw+ae8+2PNYzcUtv7n7I6qjvOlGxk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762295394; c=relaxed/simple;
	bh=Kqb+HganR8WRAn+inl0ir8CI/RLhKozdOMhMG4toTzg=;
	h=To:Subject:From:Message-Id:Date; b=hS6yfu9Ek49BLYZcwk4Ymd/MzCowIgwsubNdPr5YEDGZd7fZ73hnPJtvp5SSEEVvuCSZz76fimA4g/Pj4Zw7tYPE4ZCvxCfjWUgrK1wTESPe7Mob1BkVgcd99AAJX/kzF92KBMee8zBsX39jQNz8Qz5WIMcJvZXhoRtbakEIZf8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MMnvpcIt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MMnvpcIt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A186AC4CEF8
	for <ddprobe@lists.linux.dev>; Tue,  4 Nov 2025 22:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762295393;
	bh=Kqb+HganR8WRAn+inl0ir8CI/RLhKozdOMhMG4toTzg=;
	h=To:Subject:From:Date:From;
	b=MMnvpcItl7mPnXzaNc9zG0f8c39jazczFOACqqaCFkKNUMJ6dDyVdAHllii3eEGbG
	 sJxhQAwOyUNvOxrp0AJEUD/mbzrFFHpXijj1kMNDzE4AxILz0wBEa9F4d/b6Tturr0
	 znfKjqWnPbDVt/VoeIVjYjJ1tQdOYWTfGf/4hBsQHsuBk0PM3zsLGH0ZuAsSFZgUXF
	 KN09bRcQf1tL+CyJ+1+MYhZVgIoYVzSEzG+lmrZ6L1TvneSUd/SG8LyaoXESsALASU
	 D8bmpqNQ6fUWXGlcF1WU/zog4eM9oPmIgYeZGOoV2PCR8cCxPwVgA5Iyl4/0ORvff6
	 bIsC2Ue0gRCbQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93F04CCFA04
	for <ddprobe@lists.linux.dev>; Tue,  4 Nov 2025 22:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176229539359.11654.10424364182324340073.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ad1e8a17ad50109d816362efc0b34705008b56d9559fb46f71999928d6b51056
Date: Tue, 04 Nov 2025 22:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762295393
