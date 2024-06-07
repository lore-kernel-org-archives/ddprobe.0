Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6D2E212B95
	for <ddprobe@lists.linux.dev>; Fri,  7 Jun 2024 00:57:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717721843; cv=none; b=d81YT7vdLs/J4QveR6hr4HOzu9jbG287ett6Tjn+auK9dbaJAAtSdkl5+3Ge8epHkomEt0NecWaENULzIN6dAJaapfV+D72CkR4uCKp3KgUY7h7CnqqOc7d+fkDE1N3GNXzS+w3/jSqE56LhuNBW8W6x307EkuwWDWHMoXSp+ck=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717721843; c=relaxed/simple;
	bh=sVyxI5mhXq9Fm9++St3yXuwgQCi2j5YJN9ykkEzK2QU=;
	h=To:Subject:From:Message-Id:Date; b=H1bgh1aoryBfOo+wgg4ht66EwK+v6xmqSNDBIVu7P25V6RxuWZ9ybVDeWzLjupeWukPLm9NMp1W+ftz0tmrka3gBkA1N2jAhtAmuAErvjCrXkAqQhty/BmKLLQw0sagbZIF79lN1nVJ0IZ+k1aDLicYN4uiqZnSJIfTItVmHw5Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c/hAvZCe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c/hAvZCe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD32FC2BD10
	for <ddprobe@lists.linux.dev>; Fri,  7 Jun 2024 00:57:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717721842;
	bh=sVyxI5mhXq9Fm9++St3yXuwgQCi2j5YJN9ykkEzK2QU=;
	h=To:Subject:From:Date:From;
	b=c/hAvZCemOW/+otlp0oPNOR+G1zeREG9TmdOiry9YBwH1ZlwkOTNpeXvIoFac/Lk/
	 4wBX2yETm8v60+h+yyLBUxLqqd/o74SI8ULZdiBFvsjtXeAxhRQeAIImgRb9/PV7Of
	 H8Bqm45P8RZNV0AL9dvhG9ZYi63eL03KAAIBoODRzjr0hXGvdwzDhb4tv68Wy3wnoT
	 JbokkgA7+fIUdfOrVP0r0FZkzRIIg69bXzJPYFkw85YUZNpTkpCcXQPKVICyTYvbsT
	 ww3K9HFDqllUddfcmuVpyFJ3owCTlbRPRRP2+Kw3Q7UyRCOD0MKHLJsWIRkx2rsaEk
	 516MswAwWNOag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C8CD7C27C52
	for <ddprobe@lists.linux.dev>; Fri,  7 Jun 2024 00:57:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171772184280.4778.6884851921936885622.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: df772eea63979882a72789f154998b724d8c26faa6b5cbb896f6944fa15846a5
Date: Fri, 07 Jun 2024 00:57:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717721842
