Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 436B22D73B8
	for <ddprobe@lists.linux.dev>; Fri, 22 May 2026 02:12:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779415954; cv=none; b=Dbo1xkY+epQvgMKej7Lln1kLnX6vMdYD2B6qr2c6vxhaIY8ZemnVK62YuwczZHVYUE/u5hJS1II4pzzElZl/S+6OZufkUEQAjgXREBJ1Ob3GfTZHCe7KoaE7Zcxj2Ws6pNNAlQ7378U7z62dyionHIsxTeodNysHeNYR3E+ZYS8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779415954; c=relaxed/simple;
	bh=a4opaaBkT39KRBN88sU9VFXoK9ZLytOxGlJk4phss+s=;
	h=To:Subject:From:Message-Id:Date; b=jtcd3TyXNQ2TqYD/J+s33gomQNqOhMdMVzHS1l5nU+MDV4qDIS+bHwJONeadq55VxOEE1b1msqRStlRsO5iy5vBm1mXeCzluRY85s457ykbIs4QVhWhUSLexj+X+bKr5Tf43Afxe6SNEsorpcjC6H9mZFHdsvgZy5m7pWcwEb/4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NsAMQnbv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NsAMQnbv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C30F9C2BCB4
	for <ddprobe@lists.linux.dev>; Fri, 22 May 2026 02:12:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779415953;
	bh=a4opaaBkT39KRBN88sU9VFXoK9ZLytOxGlJk4phss+s=;
	h=To:Subject:From:Date:From;
	b=NsAMQnbvFEQniozZT6z7wMHkZvg/eFIyArCLK94+Nzo0H1tcQS3KOv2kv8YyPGXb6
	 HlQEaF7wz1ulQSZtQ7YHeqB7Aod++Vy+Xm6Io00h2Tp4NPZlwBmbpOYZ9Ck2AAjJvd
	 lHM7Xp440iiK4QeuKykNeBnKr8+1OtjTZvAF7tq6pWfHYiiHDw+B+zpaWOx201Fsbl
	 rsJV7/+lpEQtu8TjXDLCXtd3Slq/1NIdRidRGwEgvYAc7AiBKv6NgFMR8pGke+ddna
	 FiZ0TMR711vgo4qlsk0poAn+PwWgISb/Xhg1zULwsWRupNwZeznSwmO57/Lo3RWCTk
	 UslbRHDXDfNKQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8F01CD5BAF
	for <ddprobe@lists.linux.dev>; Fri, 22 May 2026 02:12:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177941595368.1670.14465082028226445734.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 426d3b68f187ad95a513503052aab3c70e800929cb96e1707159d6ee3fed23a3
Date: Fri, 22 May 2026 02:12:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779415953
