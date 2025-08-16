Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 382122288D5
	for <ddprobe@lists.linux.dev>; Sat, 16 Aug 2025 13:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755350395; cv=none; b=tftkxLyMJKdKJAy/qpsKg6YJnfKdGU6+X8zKp/FWo/IxmUZzC10YwuRPRuB8plLS6cipyvab7zjcUBQFAXNAWguZTpZq9WRHMz/SAYlyesySRBHxkvDXplGc2/c1vHqB+Fb5QV8nogPPP+YzdsAOnu1trDxiBpxL5auUF4NF6RE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755350395; c=relaxed/simple;
	bh=J6mFEG36bdYXpU4/e7TluTJISWCct8Uv3JyWqL1eEi4=;
	h=To:Subject:From:Message-Id:Date; b=W4ixaQvZB6v5ZNx8ob4Dgjjf/7op7o35L/N+vuJqTFaW/XUSveuFMjdjZZLN8r49JSJGmNYDJEX5/ND/3NliJoCjqgGKLa2/87PleRujVwZrid6HXh/karhjR75Xpfi2S3NCJJjwBqQqHXYiTtf9T1BjyAASkQI9WZtrtTRmicw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DNN2HFT6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DNN2HFT6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3E6EC4CEEF
	for <ddprobe@lists.linux.dev>; Sat, 16 Aug 2025 13:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755350393;
	bh=J6mFEG36bdYXpU4/e7TluTJISWCct8Uv3JyWqL1eEi4=;
	h=To:Subject:From:Date:From;
	b=DNN2HFT60rPJh8rfvWjyce/fINFt2KuvnM9Joo+mrHvKQVTC14+f3indyz8umKHGO
	 ISBTe1wqOX+ce4uKEsnHpgcto7zrCSvRdxe7Sp433ofEK4BjH3QafvZMkxnmrfL6x7
	 6YClpb2NxkNHheSk8jG7I/cdeJEldTIcfsreOwZ75tHAf1sH714/yA6x89AGWazg3/
	 HHd+i6wwCSlbBf4hDXQC7UKxgj1vswZMZEbkk6/i2b43rPRWLHCAf0aBZvSwQHO8B/
	 KRa0sDeaLbN1AYM65tNzhi1N0hOSd9ML0xGUa3UUGoAn6ATfQqYS7iesnfPs50N5GE
	 c/ZQm00Cufvpg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92B56CA0EE6
	for <ddprobe@lists.linux.dev>; Sat, 16 Aug 2025 13:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175535039358.8754.5189580165096662753.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 157852bc4d3b30a0e9507a9ca6aa0c91a70a58b41881aa66cf63f41b210db687
Date: Sat, 16 Aug 2025 13:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755350393
