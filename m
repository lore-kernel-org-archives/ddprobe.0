Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EC221FECC7
	for <ddprobe@lists.linux.dev>; Fri, 14 Mar 2025 12:38:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741955934; cv=none; b=c+g8KoVs4AlCeWWrT+xPqvOd7k2nz007L7OjmNOVgAE0nO9Ip9kYtDfJ7LTsTHZQgL0WgD5ntkzqI4YZGJtLJFAQxZdx1BvSZ4RJ2oA7vySJrmztD1NrOkq99HJxjARTxsN511rnvle4zcCys2Ug+ooHlRKPyMoYUFWzBwdLcyY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741955934; c=relaxed/simple;
	bh=b6MQepMSj0cMOFrcfSsD7NdC6p4hhcX9l309tXQXAGE=;
	h=To:Subject:From:Message-Id:Date; b=DBuvAtIggp/c8DJgMkPRVVIxTp/pNZ99XUExEKh9PpOl48MKsg2CCTtxsNAibJhDFN0Hi2zsAa0M2VsaZOjvHaT2q01SKHKN7VzQXB+tk3E7FF4K6BfYdEzJpBa3VwvlpzoL+Ul4S6CftI5ddclHKG4lRmb/8vU9YkVk57Zk2T8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lCEKTfHQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lCEKTfHQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8490C4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 14 Mar 2025 12:38:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741955933;
	bh=b6MQepMSj0cMOFrcfSsD7NdC6p4hhcX9l309tXQXAGE=;
	h=To:Subject:From:Date:From;
	b=lCEKTfHQEYCeUXFGAZWnHmMTJt0S99g6zztf2VjkWcMz38tkGpd2WycZ8Ztc4ZC73
	 wal261uLdJB6kCmgKezp3I0pJtaRjQhlFeS4Qi1K48h15bCsSQdaie9sMq4HujqvAY
	 ngJTXh5ojHa0sUt4iA+VMOXUyu3qq/U4E5qqxtRjitKMbu9CenaNROTxFDg55cct+f
	 RdOsAvzpMRHbTwu1WzWrfNL4ANMU4mYd+dCOGiEwZC8e4+5kxjj3EnX58dz/D612WE
	 7QmMnQExmBJVj3q5UslOKuC3uzwpzb2qx+ccGLzM/yOtV9gqZ2YkyufQ38s5eP1Ozl
	 +24MGfensCr5g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9610AC28B30
	for <ddprobe@lists.linux.dev>; Fri, 14 Mar 2025 12:38:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174195593360.23565.1254110212653473778.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d226038ccf653cba34d4d969847f86a0a3fa40a6524203ef4d573e01abff47f6
Date: Fri, 14 Mar 2025 12:38:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741955933
