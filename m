Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1ACF42D5C8E
	for <ddprobe@lists.linux.dev>; Sun, 11 Jan 2026 22:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768171434; cv=none; b=EiR1+R6ScDqbcGJ82aBI7nC+ryM8C3n5wUuM6Bu9ECvzmOjz58D9JE65aTuU7K1d+d0IOfrDWmai3Cc60Jxy+xtlDZ3/q1waRleDhXypa2iDF/7b6S3iKZ+x8BatSeTA3EfVFqCnD+TBekTcIKT+aXlonxY3Gy9j2yzXxBUWyQM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768171434; c=relaxed/simple;
	bh=iaFUAbBa1MWnw81TTgLYGp5b07kgDSi0HY1diG2VF/U=;
	h=To:Subject:From:Message-Id:Date; b=bvDrTT+VGEJIJhg91qAkTu0BxGPJqlhYW+tQx5lFsFl53DO3JpN1Hf137/+VKhiwv5w73HWUHYUqPhrVVqHfmhXqtNSz1PYqpnaTpk/gtdgEZFn8h0U0jrQX0pJLv/NexIXZHoiabbC5ir75Ged3pig62f9NDxY2obL9fRq5J40=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XyB4oNiu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XyB4oNiu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7215C4CEF7
	for <ddprobe@lists.linux.dev>; Sun, 11 Jan 2026 22:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768171433;
	bh=iaFUAbBa1MWnw81TTgLYGp5b07kgDSi0HY1diG2VF/U=;
	h=To:Subject:From:Date:From;
	b=XyB4oNiuqJpAPSbzaJNnxkiwzNzKfzhXN0wQOMxuDZ/fwlcijf0QZkg91G+pkJqt2
	 ZpyYS55b9ral5m/uLxukR0wkB5zusrlyBLzaKrNx+Y4n3Xlb86zhleXZ6piRwh/XH/
	 OL9Vsr0G8wJ0HLHNg93guYkhyq3AbsXjKcBQIbD8zcvYM5OzqQUrVkpQRCJOBFJ/DA
	 zA8OYwyEExcHx5xNVrECgrA09Zzu5oFK5i8FBkU1tCO/xkDmrkAFhlW4l2BXu48rvk
	 6opqsMTFHfna2TtZGIQknb3MsG5wtO1f+GOSgU6ma9hDalr+0XJtC0Ud27YXHMFZtx
	 sLyXdT4KzFCuA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 906DCD2502E
	for <ddprobe@lists.linux.dev>; Sun, 11 Jan 2026 22:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176817143358.14680.3991597947093388440.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4244aaafae2ca56aad7065aad9922a29353b03cd5586dbf266f9b5503048f83d
Date: Sun, 11 Jan 2026 22:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768171433
