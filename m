Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BB1B13957B
	for <ddprobe@lists.linux.dev>; Fri,  4 Oct 2024 20:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728074754; cv=none; b=Dl3L/yxXG6GyfaG5DepQUPcozltCpaPcNCwcTlJLpFkWyosa1iIk/ZrTIgkpS4pqZR/ZLIcRZxByawLQ2LQAqNR5j9x4tBoM+F8t9LBuS4+CYpftmS8fG9RGQ4107Ih1SDKCKt85CrPZ/x32pb/qcDuLhKBP2TPvjsz14qW+2I4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728074754; c=relaxed/simple;
	bh=F1hKwtFEr0tnNkXrtHBt2Lfl0cW0tZDdl1PStSKkUqw=;
	h=To:Subject:From:Message-Id:Date; b=FzlwUECG2JZ9SjGwEMjcSrIhRU6+eehfMU6FoIPkyhCkv2by6qIb5c9EXzZrpkuGK0E5gNyiTarreIENYESX71xzaIe7Qji/Mc91G/pzy4IC3ZnnNFS/Fk97hqH2bQOJhbWozdnkHlfBmigpafklmn9Y/trX7MSolNADbQi6E+o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Izh+YfhR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Izh+YfhR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFA4FC4CEC6
	for <ddprobe@lists.linux.dev>; Fri,  4 Oct 2024 20:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728074753;
	bh=F1hKwtFEr0tnNkXrtHBt2Lfl0cW0tZDdl1PStSKkUqw=;
	h=To:Subject:From:Date:From;
	b=Izh+YfhRUcTfQjZ7EoqVeWbKsuX0163i1NdKkpjSOk/CRN1Bo5hbwt2F6oYfoFWY3
	 xrmggHm3UVB6NN3LH+bVnUeTheCxR7VnXniIqKGRYKP5++bL4lCmRHqnW72LdCwh9/
	 FgXQexFRvlLeooMc2N2oWiDCyDZPWn+ofruNbdfJiOkVZr+A1wdxD4dIjNmF+1PyWI
	 F8RTvHfPp1rPHLgS/UXP0OJXeA6HgUR5dekSpKhLiacT/qr7Ah3xL72RQlfHxuEOCM
	 Dz1h3iD+0NKav5mVQbtZTBdCRhfmftsuaO9lNJ7g0HukOLYypgn+7djEoGq7W8bR1M
	 I5gkFUw2lHvWw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9FEF1CF885B
	for <ddprobe@lists.linux.dev>; Fri,  4 Oct 2024 20:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172807475364.18057.13066894219970999320.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fe5862af565acc9edbd9f1f21531c398d0d40e33875c97cc2b25eff347d71343
Date: Fri, 04 Oct 2024 20:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728074753
