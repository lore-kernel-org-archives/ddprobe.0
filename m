Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6968B10A1F
	for <ddprobe@lists.linux.dev>; Thu, 11 Apr 2024 20:39:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712867963; cv=none; b=C8SdsvgdcD5w2X0IWE+VkPeAmka9118CANjbsLrA8tzdbglAr3B9oImXU4rTIU6pkKRvGczh4hn6yTmSMY18BdDdfavdLan125tcaslaj8iEVhh9jbh7R7i6vHMSON2fZON1DyWy19TEqmtrdRfcjWBLx/QQL+EPSYwimhdJirM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712867963; c=relaxed/simple;
	bh=ZXnieas1WBcTfRw1YM8h4hDvy6ZfM+oiZKMUJGgzIZE=;
	h=To:Subject:From:Message-Id:Date; b=ZEDvLRdeEIMKeXBSqWyeuOQltQiPetCThsSeaAZflWItOnBiDg3Ev5ujUbWcKfFzF5InZv0Ynj7ep924OMcIdcAmRfD6iOuRHQrZ0kYoPDV+cd9/1qNsRY+VLuNpnZaOopprLmuz508ZdE6F4HYcuSQ0zeoC70gfc+0mf5hS+S4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=o0Jk+C6g; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="o0Jk+C6g"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DF37EC072AA
	for <ddprobe@lists.linux.dev>; Thu, 11 Apr 2024 20:39:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712867962;
	bh=ZXnieas1WBcTfRw1YM8h4hDvy6ZfM+oiZKMUJGgzIZE=;
	h=To:Subject:From:Date:From;
	b=o0Jk+C6gQ1as5qFrteFhDknajN7hKn2S6wgwtcW7lHQGN4f42mjx3+CRVl6Y8FQ1w
	 IBF1oDHnCLE622UQn3GIy+2/+4CIwzr/2JI8PhtOvXkysLzUXtpMWWbVgHs3Xo6MwR
	 3B/QmB/I2o2lFcSaM/cjvuohFSL/u7RB1mvWmo8laEoYi/6xmBTXHlX5jrF/L3wYat
	 M148Z7aGj9Y9ldPl7pvFRqRzULLQnRZGvu90gPu1UD9jm5jcwPchcQkT00ygKsaWeI
	 zwVCUV/YYH4r8nICO+ifebL1mNHQ/JZXjusHG3vzm4932mSXadLto8mZiQikNElCDz
	 /a2zLbnngW65g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C68DBC4345F
	for <ddprobe@lists.linux.dev>; Thu, 11 Apr 2024 20:39:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171286796278.28509.15734607704519299873.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c078b79b0292eba76ef5ccb22ff2146c5893b0bc1089714188b838f4ea2db254
Date: Thu, 11 Apr 2024 20:39:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712867962
