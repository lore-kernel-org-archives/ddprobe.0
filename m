Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FD733F0AB1
	for <ddprobe@lists.linux.dev>; Mon, 29 Jun 2026 17:28:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782754114; cv=none; b=uoEkDWqG15+p/Cj2hYTgQjr5Z8dION9GpWTWRsJyPxpsmvm97Rtd6V3DFeIHZRLuYs5Tkv21mExjH85PHqg+KBygXELUpTOmeXnyteryiWqaFo6hmxmAK0u4ivCBY38D+q6Z3STR2yVcYB+9R5/IihS/Q0VBXyWbqhYZwfCaRUU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782754114; c=relaxed/simple;
	bh=iRjPz4x1lup/qpjHXvQ1BDJmextUEKbrzaVIdCkWQjA=;
	h=To:Subject:From:Message-Id:Date; b=H2Qib278RdpK9Ef0/qf9g8T6+5RpUlWyYkmZTxn3gnu4/ew1Z/BK5GikYjMjmB3Rgjxa+ZO2IHJlg/ZFPkyyimvxK5d3iNS6uLkaQnLuhMXefo0sOaj/1om0PH6pIl6UujRDYT4YczyyWEY2Rt8fwmBsJr0FN4Y/AV9jgppMAmQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dvrUALkm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dvrUALkm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0B32C19425
	for <ddprobe@lists.linux.dev>; Mon, 29 Jun 2026 17:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782754113;
	bh=iRjPz4x1lup/qpjHXvQ1BDJmextUEKbrzaVIdCkWQjA=;
	h=To:Subject:From:Date:From;
	b=dvrUALkmEk5F12Ii6yz0jQTpMsDGjkEVoEzr4UYQXWgn/1iuwjVRpEyMy4Qe1tZ2e
	 C3M4Xna8ofOKimMjyBfQX9GBLqOMv5pUOZmXXVrhrKpfVYzP7h3KEEcGbfzL+eHYVu
	 DreMgh0Mmdbwge9a3xGpPaF+VtJbDhqZFkpiMFxIZrGPfPHBeH3zxj3Z1tvrzEXQCM
	 rmOdqmpgdShPwILlrYAuYMW7L1IldQmVcN2UlhLujSLBrsPC4LEANBV7zgz+m4AFoK
	 Bq/Z8XdyT1O7iaAA9kYJJRCmxtM+mqapItubK0RA/EDHDa+F1AX5scgtGp2SoYIaJr
	 Bnxj7hHcMX13g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A90EEC43458
	for <ddprobe@lists.linux.dev>; Mon, 29 Jun 2026 17:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178275411368.27746.17198380482506874630.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b9e0de4e6149cb1882aafda341eb0ab28e68b26b4250b3824c341de4782aaa2e
Date: Mon, 29 Jun 2026 17:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782754113
