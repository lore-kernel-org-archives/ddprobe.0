Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 627AA22083
	for <ddprobe@lists.linux.dev>; Sun,  4 Oct 2026 00:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791075034; cv=none; b=RpfxfAJNtr47YeMUizc9aluaA5GxhuRARBOzBe62EaFfCSAE19R+sDME5skt515h5Ce1ve93izLmO9+b6kNmt+c8eVO331mCH1vIWtNcUGBCT9fkoXg/wW5GpUrjfX3U4sxO9/Wt5/ub8KGFqMME3fsdyd1xRqKnTjR9NDNt6Vg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791075034; c=relaxed/simple;
	bh=i6GeQqca91oVfVJrHe4GSCJffau3D6s6Z0ev0uChWzg=;
	h=To:Subject:From:Message-Id:Date; b=DQReJPXGwqNnWjd4nwR70hr1nQbjo/MD3eWMRwj8qBids+Zy8qQacb/TTNC91Fqtj2WIudOwl5aqmEgavHbSfnc5UcCS4vEoU1yUz8xmj9jQhQNT30x6kRDK9JtndJaJ2vKpFriTOOq7OKLfeZVs6iI3r2AgrumZ6fJL/Xjcaew=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NoRmjR3W; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NoRmjR3W"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE476C2BCB9
	for <ddprobe@lists.linux.dev>; Sun,  4 Oct 2026 00:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791075033;
	bh=i6GeQqca91oVfVJrHe4GSCJffau3D6s6Z0ev0uChWzg=;
	h=To:Subject:From:Date:From;
	b=NoRmjR3WsaL+tQ1sSys4rSeY+0v4Gbi46dqLCADrECMKNd4sGpLfqp+WFA4XLTyPN
	 Tv556JlICtIvAzfK/cTwNDrmIgDZ3jcEH6Q/3DID8w4XWko+0FUvjW2zWFF/N/ZoFv
	 55ue3zIHIJ1SUfWS4ejmhi3N/ZwKgCH56inCWtiX6qUFTtpwcjAbV1XBpeX4dI/z7l
	 KoMhVmzVAm4bzmKF70awXlbqREzkhk1u94Uo1pAWOIBoYp0PNupXwMuRNMAL0IaT45
	 HL6CFD3U3Hw/RtjlEQ5Ue8GgJxHZZosV+2f1UN9DimmUX9OX9Tz95edbzfdWWtXaHS
	 +m4vlkUZXdijg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B08D7CA5FDD
	for <ddprobe@lists.linux.dev>; Sun,  4 Oct 2026 00:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179107503368.14877.17035531837443890063.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7b811272b15fe8ea872598dc5e87d83fd540fae0ce244c09b60e5e8eebf57379
Date: Sun, 04 Oct 2026 00:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791075033
