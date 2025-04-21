Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43B4C1A00FE
	for <ddprobe@lists.linux.dev>; Mon, 21 Apr 2025 13:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745240994; cv=none; b=RJzMxNaKwQYnP47l5/f/uDyEdKqxb5IVwHeVNzJ+9/LZ4GkxbGJ2DjgXZtHK7Cz8YoFxYN1sMZ2JsZwmA+EAHqzFRPLgHJDZ7HbySV9egj8iQA1hU54VFe8zA4IrVpFNsWHIodTGesOzEI+KVhzcYk4PZ9cNH3PnhMp0hOgLvQI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745240994; c=relaxed/simple;
	bh=uI9alKU4zos+p7joF3jlNC89GYAED/PP5OAsqlYRhvQ=;
	h=To:Subject:From:Message-Id:Date; b=HPRabg4mjRNSarr1kVnoHIUiHDR5Ru+udl2qa0dUuZgQqYFB5J1OeJMrXQhoSI21XL7Z6GC0Tv6hMNz7+2euc2HkV5RtMOUKYnP6cEE43kJ2X0Cm/jjV+9uXEOdjQPK1r2FAfqNILqpUbQ56hjEHKN7vr580djFrApeiJt0A458=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jaytO+7s; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jaytO+7s"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A47CFC4CEE4
	for <ddprobe@lists.linux.dev>; Mon, 21 Apr 2025 13:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745240993;
	bh=uI9alKU4zos+p7joF3jlNC89GYAED/PP5OAsqlYRhvQ=;
	h=To:Subject:From:Date:From;
	b=jaytO+7sz2dLNYyATTgbv2ePskdzH880h8aIii4ApHFhuHsmuze/fBwkwKQD5HgVn
	 VRM/FQROqMYGUZ6L9XuHwPAORuaMog5yYUDhbsTt0DQejzXzDtAg5pGJaQBGqbh0ua
	 Z2jHEMjDlIcPXoqMWJlWo43ccLgEEKBcj78AFHcNGeGCOcfuYEDLpApC57rFchLtmG
	 Cs1C6np5piCJ1i//m6CsV0qSAYaimNMQZ0X7kHtVpJ5A1vse1sqrXHfvCKMA5UD9ZU
	 DS+LaGHJdXfcCfINSYoeaMSYHpCZnXD9FzFWBgRs2fsrKTPHSTnJBfpRiwmTPvQK+2
	 M8O8S2vb/q2nA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94485C369AB
	for <ddprobe@lists.linux.dev>; Mon, 21 Apr 2025 13:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174524099359.29793.13614062975884570072.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8ac5299f5b407a0749e79a06698aea1c0230f5f2eea0bb28344fceb58333a0c1
Date: Mon, 21 Apr 2025 13:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745240993
