Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 869F04CA26D
	for <ddprobe@lists.linux.dev>; Tue, 14 Jul 2026 16:28:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784046514; cv=none; b=NN1dvw0S744O84nr7VzEujVu9MiYgHZXUW4h7s5V6CEb+3+m6hIRmBAKahuYpIT8FK46HrkSt+aMzniayVl5b+CHmdcHOtWMXxSmiDLTd628yR34p10M6UHUggab/3k4Go0LCplzY856IUbRnj3FOE+X+hrnEpDq3fG2kuwZRW0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784046514; c=relaxed/simple;
	bh=brbdd4KAs4QvD6TVfhUr8TSmblGOjR3DtsYJ6rHomZM=;
	h=To:Subject:From:Message-Id:Date; b=hA+MZBc0zrS4Ab/KJ8eI0EnHFzaQT5O5ycZGAKGIFdZy5T3bwvk1pdgprXmjVV1wlWj7+MFRj/JtS+vQiq6BA8aGwwS0AmFomk6fzjvtv1bp0Sw403b3leiBQPfo3Bw3H25B9/ehEHfK0KGzJw5xXLcJ/MxjZ1jpKFWKozQiQVw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gqfFChzl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gqfFChzl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EB33CC2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 14 Jul 2026 16:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784046514;
	bh=brbdd4KAs4QvD6TVfhUr8TSmblGOjR3DtsYJ6rHomZM=;
	h=To:Subject:From:Date:From;
	b=gqfFChzlk8OXZIJdnrLIWVe0D7MrlskIsX83Cx8IUJ83GgZoQmvjLRRM9UEqRBsvf
	 2KX+3xnkJLm4kw40VDLtoBGf5qQy14xlmYPm/SPYklht5obTEPVvJVO4qJQUj07ZcR
	 Coj7W7KzblZzLwRuPaD0Jr1jGp/vlT6/6yWyWVKVg+QT0riCN2bhZKj+q3HjHIe4yt
	 3KQ1+0EEppR6QAPc0RwjjIvcnQY9/tar6WqL6CZ067G+GInfDjLn7Kw1MRCFFh5yG/
	 FcwhvpYSxN2dV8S0hEJOQIdCf9jRxDcERx12KMRzgBcuO2rAR+sOfY2q9nGXZ3Nm2f
	 w5MhOL0SGa2BQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA5C3C44501
	for <ddprobe@lists.linux.dev>; Tue, 14 Jul 2026 16:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178404651368.13476.2872412919106402817.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a48bff3dd0bcfcf001ff869fd2cfa8fe4f9a8806d2060958eaa21193a85b9cea
Date: Tue, 14 Jul 2026 16:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784046513
