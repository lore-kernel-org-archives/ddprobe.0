Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30E5A78F39
	for <ddprobe@lists.linux.dev>; Sun, 28 Dec 2025 13:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766928834; cv=none; b=oDttjg2VqyhJz26hZUmVxsxBMFhuYr2MnfnGyXEG1K9iclGoBE6pmYDose+eEpPmP9lvG3CVU0lDJCIfOdWN9cMLi4Jt5MW3Pz27IcLrKkC3fQCkUDCYBtO1KUqkmhwMdT9EMGbKSnEpFeoQwFs6EzGXs9/ZgyExfZBa+N0t0/I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766928834; c=relaxed/simple;
	bh=0nP/EKd2y9dg+aTpB5F56VVphnBY5+093PN1XRQQ7oI=;
	h=To:Subject:From:Message-Id:Date; b=Bo1/it8V+zsYF32VQTdRP4q1ckmM0czVoJ7bGJ/nyiVyEXJVWtgu7HG8Ck97oEX3ZB8TAWbwUpbs8bEK3OnhNmfEuUUOF5mzk5r4WcnTDG4MyvNOZe+zrFWWMDAFx4hKpYBLoilzwZS+pj4zlF2xsZ0TAWG2BTl3n7LN4fXwn14=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WHDbG+g0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WHDbG+g0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1EB3C4CEFB
	for <ddprobe@lists.linux.dev>; Sun, 28 Dec 2025 13:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766928833;
	bh=0nP/EKd2y9dg+aTpB5F56VVphnBY5+093PN1XRQQ7oI=;
	h=To:Subject:From:Date:From;
	b=WHDbG+g0jIZMqKSva3pMzL//xC5mCQ5lC9W8G4gXCZKyAFzErhVJ5CWu3NR+hImnj
	 B6gZNAodotRtIcGfGF5giyue5kVC+EZz1KmHuUkfqcyzI/gNQChoe3Ueg8Ry62wTQn
	 WbjP9lABnWM9qgPBAzZd+YSlXVJAbzpyyOHQBHsNyNORoUqZ+UyyGC5z9I1o3bRrQM
	 3gXl/3A/4mU4i3gqojCRQTXY+TB1QZaOtsAsTd5S1j6hPcTRF5vt7P6NYP6uop8cy8
	 tij5nVaYtBfvN85+8DxmTtNtBSHfyT0Y14HpiBKH9wztacbaByvVWZ4JR/W1DJTTVi
	 QFv38AsCnJRIA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9946BD3B7E5
	for <ddprobe@lists.linux.dev>; Sun, 28 Dec 2025 13:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176692883360.14436.16637281650948396136.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f2b1beac265f121b8dc9a900a8d4b7285f2c1c7d9901c653dbbafa35f3f824e5
Date: Sun, 28 Dec 2025 13:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766928833
