Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16FB0FBE7
	for <ddprobe@lists.linux.dev>; Wed, 31 Jan 2024 02:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706669897; cv=none; b=u1NFek/w1Pbxs8sDaDXUgAnHNL2bUsK6I3czINVz966bjZL/aKhPaSLEtzHLIggDkkou/1EYo+UQ5HNRQq2gZ44XOy6e4M51tK8YoPMKldRs3SAfBWoIfj6ih3HmKj+WJ0F0MIjWVsUYGtQIvgWc4tDxZ0oLt+MkTCoG7hF4vzw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706669897; c=relaxed/simple;
	bh=kHaaUKq5oM7DcvTGmV5RppOlRGllEI9216yTqorCzVk=;
	h=To:Subject:From:Message-Id:Date; b=r4/b4D+0m96FQrdHKeBZHDEwu30HpwTmYfpJUxA7H6OFpXqSoDeVsr10URNNWrLTn4m0yL48LnbhOuZ9mr+5XQoH80/+9IIsAoEN7NDUgbYVfvvwYaz36jeMu+NtmVDraosGiGE6xmtcQoVHKqE8WE/yG493rmZg2kitaTf2EEA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QHlQn13v; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QHlQn13v"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 883E9C433C7
	for <ddprobe@lists.linux.dev>; Wed, 31 Jan 2024 02:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706669896;
	bh=kHaaUKq5oM7DcvTGmV5RppOlRGllEI9216yTqorCzVk=;
	h=To:Subject:From:Date:From;
	b=QHlQn13v/MWBEeyVlYamYd5TcWeOZLUZU2TDJRUvY95fc4GwkHLCYm8RsNEEQQ07d
	 Q+Jx2dfYRfRqtX7KyoJN5qW3YbAgdwsygEaRTlFSU0HHrw79aZVkYm2KmurBOqH1E4
	 YH8Vss8tkB7MDiF7O7CG4640OIcOd7PMOlwem2NKgTWzlT8metkm6sqWb8AkpTvOt3
	 y+agtjMlVxfrMx9eH7ipuqaMhxeKeUQABn4Jgun16F6DBFDNBurBaSk9HixxLOHdgJ
	 hgW4hoAaO1V5rtqz5UStFooSTswRW5kdr65H9xmESDgoKApYmUA3U+BkluaBr3TeL5
	 idva4uSSLEqzA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6C832C47DDB
	for <ddprobe@lists.linux.dev>; Wed, 31 Jan 2024 02:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170666989643.12877.12835956571898905139.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ead431ad16616e579cff0b8bf10147184725608bd3a90ba560276d260be4301e
Date: Wed, 31 Jan 2024 02:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1706669896
