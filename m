Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D7BF9225413
	for <ddprobe@lists.linux.dev>; Mon, 18 Aug 2025 13:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755524993; cv=none; b=A2de+e8IN/y9CfUPkC4mrylzjCzdhQK2HRxRN47u4SGMq9RYJfQTK8c6899IyAuTamzrEnHtuvE3fZFN/bkHRj8qTc0rQGBqP968L+uALv0suW7HXf2/2MR0lOaZVUYac/M0V6z+A/bRVhMuX4bpkNK/vIoWYLYYs6861L2GgGk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755524993; c=relaxed/simple;
	bh=iEIT4ROIepa0JRaR8FTUzurEQVVM7yFK300O4VGozWE=;
	h=To:Subject:From:Message-Id:Date; b=sgAQdASFYkuueRAlcm+MBop9OoztGcxEfQYNgdVWHjX1FtBfwvpdTf4LsLvvMbJ9yTRoLYT72azag+/vVYBwGr+dfMMiGkLehshjxLTMRLFDTC/1vs6Zo0HyAhfkawTcCNCFfEhZeORABTKW7MXs69NGYpMIKd2V9eFamvIJnhs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Tr7+/cnj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Tr7+/cnj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9B360C4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 18 Aug 2025 13:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755524993;
	bh=iEIT4ROIepa0JRaR8FTUzurEQVVM7yFK300O4VGozWE=;
	h=To:Subject:From:Date:From;
	b=Tr7+/cnjTlEpE+gTB8GLEwbrU2jp8dylLsHIj3oaWcFd1BqYhyJRXBtQ4fAgOwODj
	 biRL/4LJXlDDzt32ToCRk9UReC4U5rHGvqQUVBAQk4SEbvNSclKeUlaoy5XkIGnGTJ
	 3DqYQ7qQdkLn8sw7Bdqpw4pYoLoPLktYzHfGgjzE+IEgy9RNB8IcN+hdoe4oe+jyai
	 WhJndK/HTdE2Li0ht1lEHDFqluX5JOK0fdpJ5ikRmEGe4KtX+nfVmmICvauISzQ5N2
	 ogJV0nSoyLEjm22OKMUcWf/uqP9nPLG04WfrUMGvI4JMArCbvmkyh67Z2M5bVSIxxA
	 3qMdtrD+k+Wgw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EAE4CA0ED1
	for <ddprobe@lists.linux.dev>; Mon, 18 Aug 2025 13:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175552499357.16611.4096345538411594723.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0a61a7f0649c867348649b37b01177c3c6f99d52fd567911f16d18aa0292e49c
Date: Mon, 18 Aug 2025 13:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755524993
