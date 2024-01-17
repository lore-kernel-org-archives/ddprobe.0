Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 09A511426D
	for <ddprobe@lists.linux.dev>; Wed, 17 Jan 2024 08:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705481297; cv=none; b=pJVQFJyDfa6QSiA4Ia8YCwQCOWOg4PrUKpP8lhNpepjhj+2bbEZ2ONnt5HVeiA73TcVr7xArCp05k0HSoDG27awMR7zKAOQ1MnwKXOTX6QarTiD9WNWeH+vDVN1s2QWWqEENtU3HEEE1Gb3gZL0UlUQ0A0EysiquRgWCWGGyUH4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705481297; c=relaxed/simple;
	bh=pV+DT2aTMuSoH+nQgExY4BLmFZ4cogo45UjerpBVUWs=;
	h=Received:DKIM-Signature:Received:To:Subject:From:Message-Id:
	 X-Rtt-Probe-Hmac:Date; b=eS/zXUVQPzb2lpS88b0KM1OBwtUryjIRehpiKzbWVkAM7TIVE3ITzWH22pbzEn8HkWgCmW5OSPH425klU+tPZCPra/GsG0cDhSpWz3471odGoiU/jLQHit0G76g+h9hAZbB2tB/J9eMnsBLPwuVi39qlMyguSV4OOEfVANpCmEw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IEqD1Eva; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IEqD1Eva"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 77332C433F1
	for <ddprobe@lists.linux.dev>; Wed, 17 Jan 2024 08:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705481296;
	bh=pV+DT2aTMuSoH+nQgExY4BLmFZ4cogo45UjerpBVUWs=;
	h=To:Subject:From:Date:From;
	b=IEqD1Eva8Hwvx45KUbYt0K9v5AQ+t9/r7om4s1s+GUxBq64281ybI9tx/F/NZCF/v
	 mwS1vSg0VXQmQPJI8mcsft+qJHfQYUiEa1/hiWY5sb9nwAj0GNBhw0s6Bx0fU7/X/3
	 6xnbrNKnLqT0J3IdXTD24uAnEc3D3A6DffYVsui2YKIt27KlR6RfMKV5QFOFO45Gz5
	 gS2SCCS4Q5st8O/fZrdLnBIUF6JklCPVbc1mWdfm4BsX7IxMh8I78RiBSrMypshgCh
	 GTMvf8ewhWPgLhieDlnYKwZDXI69ishFhWBfVeoPududngXVAear2oG12r79GkNQAc
	 Dmf6zO9LYeYoQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6022DC47258
	for <ddprobe@lists.linux.dev>; Wed, 17 Jan 2024 08:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170548129638.26164.15563629599859619154.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cf197f41c475e16a2cad1f4f2d0f30931ac007fe1bf62568b7f11dc20587f464
Date: Wed, 17 Jan 2024 08:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705481296
