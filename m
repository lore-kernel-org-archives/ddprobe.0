Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C422B15B0EF
	for <ddprobe@lists.linux.dev>; Sun, 24 Nov 2024 10:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732442753; cv=none; b=qNZ4LkRHa0U3jTcKuZkk5gd+tNZE+KSBUOrV6xneriz3ud2K9c8nQdO20PahMTFaMFRp5Ju4CgMeJ0Fs1cZbMQLOM0HHcRu42W6Su3oxQ4nHM/heTusZWxKSJsnfIaMcMgcRVRDVun1N0ehK1VLBQt/Oi3Ahc30AyfyZ3LqhkXc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732442753; c=relaxed/simple;
	bh=oBTbwZZVPqUtuRIV/1gY2fdmNisdAYBYpVRDhXI0uuA=;
	h=To:Subject:From:Message-Id:Date; b=qhmD4sszLc+tzJjMpuhM475Kfcu2R8lxyGOir3IYrCG7USaek3J8scCayMEeDoTrm/mp9qMSoYexrO0PYbab+LdRzzdkZc9K5wNlhwwS3387mlPjqUzom8jtjTKSFUGIaWemenfeLsUgINr+8k60UyS9CI94/yeCOm92AeZYgMc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GPyB6Cap; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GPyB6Cap"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A43A4C4CECC
	for <ddprobe@lists.linux.dev>; Sun, 24 Nov 2024 10:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732442753;
	bh=oBTbwZZVPqUtuRIV/1gY2fdmNisdAYBYpVRDhXI0uuA=;
	h=To:Subject:From:Date:From;
	b=GPyB6CapRJSDomAGMSasixPjdqge44TjCR//pjZxdEeYEcSjZ1EMJI9D1h2IFGuAm
	 Sc2o9ew711bJG75QJKQ1DQOXdCfA6/wh/uEWcnetjWJA7f86NlkKPKRF1UpGQNwPCf
	 h5czBj0gsEsw8C2jwcT9UXyt+WHMD5aq1ihTm+dDchCxjwFWtjBzzjIJdpt3VOp3ku
	 taFZJEWWvpVtHEnex9L7H8IapNZE7JfvZ8R+adQmD63biIeIK/wRQ5WIAmLFi2Ds2z
	 3dzBbd0q/8oogmdJc/snbbzqGSLGjKIS4SltOxeO5Bg5syAnHnhK/9NSMlqbbbNNpa
	 vhemZ13zNlTWg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 916E2E668A4
	for <ddprobe@lists.linux.dev>; Sun, 24 Nov 2024 10:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173244275358.19846.1087193469601944448.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bc33cf7e267c557639d25514365ffdc27309a4f66f99a0fbb37069470afecadb
Date: Sun, 24 Nov 2024 10:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732442753
