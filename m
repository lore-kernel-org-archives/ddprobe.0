Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2398333858B
	for <ddprobe@lists.linux.dev>; Fri, 21 Nov 2025 08:11:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763712714; cv=none; b=d1MJCAeV8ASd5ApVIG+HNMb1tf8ZQVX2x8ZmXC3VYCyGTBkh/220ELQROFxoKs8OL7xBL92iEpFcJYg/XjI7DoxMmyfqXIOnpXXTGjfkivALXBlBd5zBc83PPTpTGCbNhETe/Xcbn7STYe9d+A48sFPBWIfJT+8dTD6l0o+EFag=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763712714; c=relaxed/simple;
	bh=z45aLty1dTpVIxv6fivURGWU5bOlHVdeHrFUCSR506o=;
	h=To:Subject:From:Message-Id:Date; b=sAZJQFArvuTfOKl5OJo7B6px9MBi7uLdNOMw1J9VaSuj1b8vH+3OfAxMt+la1ZSsqme3CbLf9L7gufJ0/wbBsOcK9lfmamUQ7nhoo1sYig9rrQO+lgaEC1VbBoYqSj8SWG0mEB6MscRYjoiUJHirVF9G3bz6p3+BTu7PPtFcK+0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Zog8kCK7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Zog8kCK7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD32AC16AAE
	for <ddprobe@lists.linux.dev>; Fri, 21 Nov 2025 08:11:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763712713;
	bh=z45aLty1dTpVIxv6fivURGWU5bOlHVdeHrFUCSR506o=;
	h=To:Subject:From:Date:From;
	b=Zog8kCK7IqKgEFkd3Yt3iWjV7eOOmESpc9j+6I1jbt8XMIDIEhkjMTH9hoWpZ2UL5
	 Ma2vTCc/8m8enyshDZCjs7EAwrptYn066o+SInDzG50hDIO0YTH/+JsRmhhkQx3GU+
	 Q3mdkeRHi/JyZzWJTthA47D/5Vsyw0zcSIVUB27nvWzFsRmDjT8cHR72jtJgZerMYd
	 5W/yFHudRrQbENhoCNOpZsRJ6jQOoreEx/qpbA3XmM12AhQX1J2PDsPYoxgmo4RPMN
	 w+oF7TvybrpY3noH4Eb72dcmtwX42n/WU9x6uJPFQO10um//PLz+lyl03+p3tT9LwX
	 DcvKn47eDANdA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9DFB3CFA748
	for <ddprobe@lists.linux.dev>; Fri, 21 Nov 2025 08:11:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176371271363.26293.930207264306273820.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5f8c28e0b36092ab0c85f0c4a2de2946af4103be9b7dd3eb9a12e1e110349815
Date: Fri, 21 Nov 2025 08:11:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763712713
