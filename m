Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AE981F91F6
	for <ddprobe@lists.linux.dev>; Sat,  3 Oct 2026 18:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791052834; cv=none; b=bNJnGg0VpAZMY78SFWq+m8eUOougsbfIa5svSbzvLko0p+9ecfUT9Ug7C6n9QfMt3Om433i92w2qgG3B3CIqOvYQ4UdNXRAixfG+i5zESAGTn33nMTmW41ESLyXfc2W+WjsRXGEo7enz88gAeBm1Yp8yQY/X7aeIybXmezK1/x0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791052834; c=relaxed/simple;
	bh=7qozIO/NUZXs8t2vdFl9CYCeD9YKI+eo0duzW6VdOHk=;
	h=To:Subject:From:Message-Id:Date; b=t+BNi7L9yDweBbnTuLqVN6hogsrNCCrcNK0UQxtI/Q3kuNbLsMBab8CWCEmE5T/Y9SF/HzBMp7PQl2wrB2WYL0CQbaJYNuYYf8e6guHYII1NHtT8oTlP8M6Lb3isz7t/BtasrBXiXqcjiHmUkNm8Qv1UWAzSnAAIo0GpD8OYf90=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UrszX/Xq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UrszX/Xq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE9ACC2BCB9
	for <ddprobe@lists.linux.dev>; Sat,  3 Oct 2026 18:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791052833;
	bh=7qozIO/NUZXs8t2vdFl9CYCeD9YKI+eo0duzW6VdOHk=;
	h=To:Subject:From:Date:From;
	b=UrszX/XqO1R1cIWLqZpgRqaacpjn/urrxLws+k9lvAQHFtVS9F69ynxtHz4wnieBo
	 TX+No3AbkVau6vtZud29n9isA+rI1WQ2ZhFjt/8RWjGiTlDsJhOyVPbbfuhVdp7Anx
	 KrJ1dk9fHGhHrIy1G+7TJGqObE2Fz/V+kr2Rbxbc9LWI5+tXSv2F5EqzNC4wKuYqpP
	 5EgGLFbeUglRS2wRIFoItyT6apOFHhchdw2HmX9tcXZm7iIobxhX/HU4Ug9nffr8+9
	 f+eG5MFu7taoJb/CkVV5pXnRyXjUVx+ECpgLpr0q7KVdxsubpyKTMUZOwz+Y5XiEy3
	 WiKZQbAnb/ATw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9E1FCA5FE6
	for <ddprobe@lists.linux.dev>; Sat,  3 Oct 2026 18:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179105283368.19624.10582516684524536539.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ab5301dbbe92093099af5632e73bdd64ae203a7d3e24b0fba9deca4397df88a7
Date: Sat, 03 Oct 2026 18:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791052833
