Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 465801ADC86
	for <ddprobe@lists.linux.dev>; Sat,  1 Feb 2025 13:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738416354; cv=none; b=ukH1I+I8hBGQgWcvds+xZJfE1jno+IN9HyRB+xrrgrAcSt1JFVIO1lpkgrA3jeez2reljFeThMYrab74N55vQ/4eaNUPcTmN56wCGXoH3y5LENQYvxgs/f37MwWrZ3bV65BX1QqXJ/BZ7OwvuxzAOFqFksNLaIDD8bzFwhxb6Ig=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738416354; c=relaxed/simple;
	bh=i1C+47qCMQ5kucTBH3habT+75skcrmMrJHxIXnPuc/o=;
	h=To:Subject:From:Message-Id:Date; b=pkysEaExdjbG5PyWtk9oODWQwSnEeLEyPIh7tnr55zYWQNCpZL4dGPWUFWLJzLK0OMoBTBPtkGqnHbc+b9vaDNki0MkmWD/tbpslng+5H424AAj+Zbbep7zzgrfLMxWiOZIuPwc2v90YXkjLUG4gU5kNA7LUIRCSZh/OSiu/qBI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=T7YPnLbj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="T7YPnLbj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6D2FC4CEE1
	for <ddprobe@lists.linux.dev>; Sat,  1 Feb 2025 13:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738416353;
	bh=i1C+47qCMQ5kucTBH3habT+75skcrmMrJHxIXnPuc/o=;
	h=To:Subject:From:Date:From;
	b=T7YPnLbjpmO1zmKUq7cS0CKdDX/RowkguanzBLWENXoKPWrjNBV8g4cToA3jlfl9b
	 Z5kFPg/sajYJ5JOsX3fx3evoY/u3RcMGL7bM/vtq/sbXJszS/03/+c4jb3++WWHpWB
	 REzD2YcIyvkzVmuEnfITh0N2bf5XIA0FnPpW4+pPYnu6DcmzQIeLFLsYWef+35yIC7
	 npGCxKtkqGt6neNDwV+WAyXdGr3P3WHwdiZIA6Vti63KxxJxxap5lNQqKrSVrxUaR1
	 uq5cuBml+UYaNpgtGp83/s7VpXBgQVHJ16FnDuGWsmyPJZhJ/Wq+KwKtE2hij+Zu+6
	 Hhr/9IRKPd7kQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91363C0218A
	for <ddprobe@lists.linux.dev>; Sat,  1 Feb 2025 13:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173841635358.7238.15768305207235789651.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 27074f57194d64be86c84acf7fbf8649ec9ffd8be7b842f321264602e64caf6d
Date: Sat, 01 Feb 2025 13:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738416353
