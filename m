Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35B3538FA6
	for <ddprobe@lists.linux.dev>; Tue, 18 Mar 2025 03:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742269195; cv=none; b=e9azHpDjDoAuT6oalOlpETzHExH3Mxa9d/kPRwFY5o4Q2tfcRGtnAEBTGj6BWUCzhG+M62RjdmrfJ9jz8C5qnh1EUaiWNjp9OsfHrgKinmlLQoo9pF9weOFPHY6FizEX/qRmcwKDMhhP9F9IVIp19Mepfy4H2ymkanTW3vQUdH8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742269195; c=relaxed/simple;
	bh=SZ6DBn0rVSlNTfRRjxT6yFBJr24eq6YacNhfxF97eWM=;
	h=To:Subject:From:Message-Id:Date; b=KRVlUAE1i6ZlXFFJJTxgAglh5o5veUPNKlZQb2/uqb9gGS2TfDroezinKVMkklmFx1smRmmX1D1LkXhhUfTxtPWWT6mtZED41DVdM0wN0OmmRj+sUzeVj3CttI7BlJ9RYcZ/FC7kdApKUNumzBHXt5p8cKXzdukb37y0ReNRV8k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KvYA5A5+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KvYA5A5+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA67EC4CEDD
	for <ddprobe@lists.linux.dev>; Tue, 18 Mar 2025 03:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742269193;
	bh=SZ6DBn0rVSlNTfRRjxT6yFBJr24eq6YacNhfxF97eWM=;
	h=To:Subject:From:Date:From;
	b=KvYA5A5+zSzYLKTnPp5REM8CJ63c8QHN6C3s7DFEI99jE6pn3KptlGwMt8v5B2G3i
	 QriOLyrD7acUwbQ4oBeYLmFIdn99BqzyOm1eSUvobxGwygcN1SC2t6MV/cR2KYnSSM
	 dBX7CeWBMszUViRHQIIMIl9soBSkiqWzZQM2Sz9BQjpUnepQV8hZleD/HbXw/+i2hW
	 YvKhory69dLEJP/KGQbVh3Zybvhi9xJyHQxlhOFnixLuWbNAfMWHezlSwb+eeGBE5S
	 6V21o3t7t6O5MdXgeGGlxL9ddgUjvf3fO7wi6WBjwVn+KSfmSTvZsNx3BAPe2/Z2Xp
	 3wVOnyxz8nlcA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97004C282EC
	for <ddprobe@lists.linux.dev>; Tue, 18 Mar 2025 03:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174226919361.10135.3701559198973737757.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: df08cec5eaeee4819417584b9bcec6a16f2c6f04002dc71a7a6f5ab84442edfa
Date: Tue, 18 Mar 2025 03:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742269193
