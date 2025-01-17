Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 200051D5CE5
	for <ddprobe@lists.linux.dev>; Fri, 17 Jan 2025 09:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737107754; cv=none; b=MWKiMvEyPlOpTaOdkVegQygooboTtdxfQgcEemOi0xt+0nEdz07b3VDc0bgRdhN5IVZ9EYZzdWiGdra8egXrGU9iOsEsk2emUH8LdpbiEp5mbcJGVN2CLQ0ZQXv16/Zs8kbZhB8s7dvmToCS2cxHpim5KF0Q93PBmV7Eo4zxpyU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737107754; c=relaxed/simple;
	bh=ML+nFGiN/tfizDPsaMzOKBunllhICCpCYuN90LdocBs=;
	h=To:Subject:From:Message-Id:Date; b=bjW8oHNGIFAKVR1vI8BBsXkbSPH3gvis5D9WlQsj5IlFpctBzZlRceI9BCtWXLWRB1YBHsialBgKC2Se2NLl+idL7ZXDHzE91MgT8uqUEwsOJ0I3mL6LXhGS9kAeWUi8CZ9vlER7hDL3TfEXevQylQbyWqn0wFLD/j8iq3QWfhY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ShLtqZe6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ShLtqZe6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D489C4CEDD
	for <ddprobe@lists.linux.dev>; Fri, 17 Jan 2025 09:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737107753;
	bh=ML+nFGiN/tfizDPsaMzOKBunllhICCpCYuN90LdocBs=;
	h=To:Subject:From:Date:From;
	b=ShLtqZe6Ua/7Th47QMVLJQHQ7ge9ZzoYWYXatkREnXgUn+gukUZyoMyDyuNqKT3Ek
	 WZPHJ8AwX7laVxUZcCc7IJqH5xERHYnvZ/Z9tFalDMWkkVGwkuPMR9miaty5KWyFS5
	 ylvOmgydFubCxq4mrGT7pLMii4AUAlDyiqcbNCdo5fMWL8rC00JFFT/nJM7srnPRUT
	 uhpxc+XM2RG2yB/uGD5HleqikLybL13vmG7MfZQeZ5ve5dNjNNUxDZZsdCR0CgPIjr
	 Mis1KvtfUL25T1iIGXPratQ+2weFl/Qswe0vtfFkPvV3KJ0WVUYSeaLA/hZGnI+PHZ
	 25vr2Jl23P/8g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92F6DC02185
	for <ddprobe@lists.linux.dev>; Fri, 17 Jan 2025 09:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173710775359.5872.4022941629763575310.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2215c4eafea9834fa063d9c898953e6c160a3a144d854d17136f1d7645fd08d6
Date: Fri, 17 Jan 2025 09:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737107753
